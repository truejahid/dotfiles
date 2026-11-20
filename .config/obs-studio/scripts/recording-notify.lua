obs = obslua

local function notify(title, message)
  local function quote(s)
    return "'" .. s:gsub("'", "'\\''") .. "'"
  end

  os.execute(
    "notify-send " .. quote(title) .. " " .. quote(message)
  )
end

local function on_event(event)
  -- Recording started (disabled)
  -- if event == obs.OBS_FRONTEND_EVENT_RECORDING_STARTED then
  --     notify("Recording started", "OBS is recording.")
  -- end

  -- Recording paused (disabled)
  -- if event == obs.OBS_FRONTEND_EVENT_RECORDING_PAUSED then
  --     notify("Recording paused", "OBS recording is paused.")
  -- end

  -- Recording resumed (disabled)
  -- if event == obs.OBS_FRONTEND_EVENT_RECORDING_UNPAUSED then
  --     notify("Recording resumed", "OBS recording has resumed.")
  -- end

  -- Recording stopped (disabled)
  -- if event == obs.OBS_FRONTEND_EVENT_RECORDING_STOPPED then
  --     notify("Recording stopped", "OBS has stopped recording.")
  -- end

  -- Recording saved (enabled)
  if event == obs.OBS_FRONTEND_EVENT_RECORDING_STOPPED then
    local path = obs.obs_frontend_get_last_recording()

    if path and path ~= "" then
      local file = io.open(path, "rb")

      if file then
        file:close()
        notify("Recording saved", path)
      end
    end
  end
end

function script_description()
  return "OBS recording saved notifications through Mako."
end

function script_load(settings)
  obs.obs_frontend_add_event_callback(on_event)
end
