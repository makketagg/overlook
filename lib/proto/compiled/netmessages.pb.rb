## Generated from netmessages.proto
require "beefcake"


module NET_Messages
  net_NOP = 0
  net_Disconnect = 1
  net_File = 2
  net_SplitScreenUser = 3
  net_Tick = 4
  net_StringCmd = 5
  net_SetConVar = 6
  net_SignonState = 7
  net_PlayerAvatarData = 100
end

module CLC_Messages
  clc_ClientInfo = 8
  clc_Move = 9
  clc_VoiceData = 10
  clc_BaselineAck = 11
  clc_ListenEvents = 12
  clc_RespondCvarValue = 13
  clc_FileCRCCheck = 14
  clc_LoadingProgress = 15
  clc_SplitPlayerConnect = 16
  clc_ClientMessage = 17
  clc_CmdKeyValues = 18
end

module VoiceDataFormat_t
  VOICEDATA_FORMAT_STEAM = 0
  VOICEDATA_FORMAT_ENGINE = 1
end

module ESplitScreenMessageType
  MSG_SPLITSCREEN_ADDUSER = 0
  MSG_SPLITSCREEN_REMOVEUSER = 1
  MSG_SPLITSCREEN_TYPE_BITS = 1
end

module SVC_Messages
  svc_ServerInfo = 8
  svc_SendTable = 9
  svc_ClassInfo = 10
  svc_SetPause = 11
  svc_CreateStringTable = 12
  svc_UpdateStringTable = 13
  svc_VoiceInit = 14
  svc_VoiceData = 15
  svc_Print = 16
  svc_Sounds = 17
  svc_SetView = 18
  svc_FixAngle = 19
  svc_CrosshairAngle = 20
  svc_BSPDecal = 21
  svc_SplitScreen = 22
  svc_UserMessage = 23
  svc_EntityMessage = 24
  svc_GameEvent = 25
  svc_PacketEntities = 26
  svc_TempEntities = 27
  svc_Prefetch = 28
  svc_Menu = 29
  svc_GameEventList = 30
  svc_GetCvarValue = 31
  svc_PaintmapData = 33
  svc_CmdKeyValues = 34
  svc_EncryptedData = 35
end

class CMsgVector
  include Beefcake::Message
end

class CMsgVector2D
  include Beefcake::Message
end

class CMsgQAngle
  include Beefcake::Message
end

class CMsgRGBA
  include Beefcake::Message
end

class CNETMsg_Tick
  include Beefcake::Message
end

class CNETMsg_StringCmd
  include Beefcake::Message
end

class CNETMsg_SignonState
  include Beefcake::Message
end

class CMsg_CVars
  include Beefcake::Message

  class CVar
    include Beefcake::Message
  end
end

class CNETMsg_SetConVar
  include Beefcake::Message
end

class CNETMsg_NOP
  include Beefcake::Message
end

class CNETMsg_Disconnect
  include Beefcake::Message
end

class CNETMsg_File
  include Beefcake::Message
end

class CNETMsg_SplitScreenUser
  include Beefcake::Message
end

class CNETMsg_PlayerAvatarData
  include Beefcake::Message
end

class CCLCMsg_ClientInfo
  include Beefcake::Message
end

class CCLCMsg_Move
  include Beefcake::Message
end

class CCLCMsg_VoiceData
  include Beefcake::Message
end

class CCLCMsg_BaselineAck
  include Beefcake::Message
end

class CCLCMsg_ListenEvents
  include Beefcake::Message
end

class CCLCMsg_RespondCvarValue
  include Beefcake::Message
end

class CCLCMsg_FileCRCCheck
  include Beefcake::Message
end

class CCLCMsg_LoadingProgress
  include Beefcake::Message
end

class CCLCMsg_SplitPlayerConnect
  include Beefcake::Message
end

class CCLCMsg_CmdKeyValues
  include Beefcake::Message
end

class CSVCMsg_ServerInfo
  include Beefcake::Message
end

class CSVCMsg_ClassInfo
  include Beefcake::Message

  class Class_t
    include Beefcake::Message
  end
end

class CSVCMsg_SendTable
  include Beefcake::Message

  class Sendprop_t
    include Beefcake::Message
  end
end

class CSVCMsg_Print
  include Beefcake::Message
end

class CSVCMsg_SetPause
  include Beefcake::Message
end

class CSVCMsg_SetView
  include Beefcake::Message
end

class CSVCMsg_CreateStringTable
  include Beefcake::Message
end

class CSVCMsg_UpdateStringTable
  include Beefcake::Message
end

class CSVCMsg_VoiceInit
  include Beefcake::Message
end

class CSVCMsg_VoiceData
  include Beefcake::Message
end

class CSVCMsg_FixAngle
  include Beefcake::Message
end

class CSVCMsg_CrosshairAngle
  include Beefcake::Message
end

class CSVCMsg_Prefetch
  include Beefcake::Message
end

class CSVCMsg_BSPDecal
  include Beefcake::Message
end

class CSVCMsg_SplitScreen
  include Beefcake::Message
end

class CSVCMsg_GetCvarValue
  include Beefcake::Message
end

class CSVCMsg_Menu
  include Beefcake::Message
end

class CSVCMsg_UserMessage
  include Beefcake::Message
end

class CSVCMsg_PaintmapData
  include Beefcake::Message
end

class CSVCMsg_GameEvent
  include Beefcake::Message

  class Key_t
    include Beefcake::Message
  end
end

class CSVCMsg_GameEventList
  include Beefcake::Message

  class Key_t
    include Beefcake::Message
  end

  class Descriptor
    include Beefcake::Message
  end
end

class CSVCMsg_TempEntities
  include Beefcake::Message
end

class CSVCMsg_PacketEntities
  include Beefcake::Message
end

class CSVCMsg_Sounds
  include Beefcake::Message

  class Sounddata_t
    include Beefcake::Message
  end
end

class CSVCMsg_EntityMsg
  include Beefcake::Message
end

class CSVCMsg_CmdKeyValues
  include Beefcake::Message
end

class CSVCMsg_EncryptedData
  include Beefcake::Message
end

class CMsgVector
  optional :x, :float, 1
  optional :y, :float, 2
  optional :z, :float, 3
end

class CMsgVector2D
  optional :x, :float, 1
  optional :y, :float, 2
end

class CMsgQAngle
  optional :x, :float, 1
  optional :y, :float, 2
  optional :z, :float, 3
end

class CMsgRGBA
  optional :r, :int32, 1
  optional :g, :int32, 2
  optional :b, :int32, 3
  optional :a, :int32, 4
end

class CNETMsg_Tick
  optional :tick, :uint32, 1
  optional :host_computationtime, :uint32, 4
  optional :host_computationtime_std_deviation, :uint32, 5
  optional :host_framestarttime_std_deviation, :uint32, 6
end

class CNETMsg_StringCmd
  optional :command, :string, 1
end

class CNETMsg_SignonState
  optional :signon_state, :uint32, 1
  optional :spawn_count, :uint32, 2
  optional :num_server_players, :uint32, 3
  repeated :players_networkids, :string, 4
  optional :map_name, :string, 5
end

class CMsg_CVars

  class CVar
    optional :name, :string, 1
    optional :value, :string, 2
    optional :dictionary_name, :uint32, 3
  end
  repeated :cvars, CMsg_CVars::CVar, 1
end

class CNETMsg_SetConVar
  optional :convars, CMsg_CVars, 1
end

class CNETMsg_NOP
end

class CNETMsg_Disconnect
  optional :text, :string, 1
end

class CNETMsg_File
  optional :transfer_id, :int32, 1
  optional :file_name, :string, 2
  optional :is_replay_demo_file, :bool, 3
  optional :deny, :bool, 4
end

class CNETMsg_SplitScreenUser
  optional :slot, :int32, 1
end

class CNETMsg_PlayerAvatarData
  optional :accountid, :uint32, 1
  optional :rgb, :bytes, 2
end

class CCLCMsg_ClientInfo
  optional :send_table_crc, :fixed32, 1
  optional :server_count, :uint32, 2
  optional :is_hltv, :bool, 3
  optional :is_replay, :bool, 4
  optional :friends_id, :uint32, 5
  optional :friends_name, :string, 6
  repeated :custom_files, :fixed32, 7
end

class CCLCMsg_Move
  optional :num_backup_commands, :uint32, 1
  optional :num_new_commands, :uint32, 2
  optional :data, :bytes, 3
end

class CCLCMsg_VoiceData
  optional :data, :bytes, 1
  optional :xuid, :fixed64, 2
  optional :format, VoiceDataFormat_t, 3, :default => VoiceDataFormat_t::VOICEDATA_FORMAT_ENGINE
  optional :sequence_bytes, :int32, 4
  optional :section_number, :uint32, 5
  optional :uncompressed_sample_offset, :uint32, 6
end

class CCLCMsg_BaselineAck
  optional :baseline_tick, :int32, 1
  optional :baseline_nr, :int32, 2
end

class CCLCMsg_ListenEvents
  repeated :event_mask, :fixed32, 1
end

class CCLCMsg_RespondCvarValue
  optional :cookie, :int32, 1
  optional :status_code, :int32, 2
  optional :name, :string, 3
  optional :value, :string, 4
end

class CCLCMsg_FileCRCCheck
  optional :code_path, :int32, 1
  optional :path, :string, 2
  optional :code_filename, :int32, 3
  optional :filename, :string, 4
  optional :file_fraction, :int32, 5
  optional :md5, :bytes, 6
  optional :crc, :uint32, 7
  optional :file_hash_type, :int32, 8
  optional :file_len, :int32, 9
  optional :pack_file_id, :int32, 10
  optional :pack_file_number, :int32, 11
end

class CCLCMsg_LoadingProgress
  optional :progress, :int32, 1
end

class CCLCMsg_SplitPlayerConnect
  optional :convars, CMsg_CVars, 1
end

class CCLCMsg_CmdKeyValues
  optional :keyvalues, :bytes, 1
end

class CSVCMsg_ServerInfo
  optional :protocol, :int32, 1
  optional :server_count, :int32, 2
  optional :is_dedicated, :bool, 3
  optional :is_official_valve_server, :bool, 4
  optional :is_hltv, :bool, 5
  optional :is_replay, :bool, 6
  optional :is_redirecting_to_proxy_relay, :bool, 21
  optional :c_os, :int32, 7
  optional :map_crc, :fixed32, 8
  optional :client_crc, :fixed32, 9
  optional :string_table_crc, :fixed32, 10
  optional :max_clients, :int32, 11
  optional :max_classes, :int32, 12
  optional :player_slot, :int32, 13
  optional :tick_interval, :float, 14
  optional :game_dir, :string, 15
  optional :map_name, :string, 16
  optional :map_group_name, :string, 17
  optional :sky_name, :string, 18
  optional :host_name, :string, 19
  optional :public_ip, :uint32, 20
  optional :ugc_map_id, :uint64, 22
end

class CSVCMsg_ClassInfo

  class Class_t
    optional :class_id, :int32, 1
    optional :data_table_name, :string, 2
    optional :class_name, :string, 3
  end
  optional :create_on_client, :bool, 1
  repeated :classes, CSVCMsg_ClassInfo::Class_t, 2
end

class CSVCMsg_SendTable

  class Sendprop_t
    optional :type, :int32, 1
    optional :var_name, :string, 2
    optional :flags, :int32, 3
    optional :priority, :int32, 4
    optional :dt_name, :string, 5
    optional :num_elements, :int32, 6
    optional :low_value, :float, 7
    optional :high_value, :float, 8
    optional :num_bits, :int32, 9
  end
  optional :is_end, :bool, 1
  optional :net_table_name, :string, 2
  optional :needs_decoder, :bool, 3
  repeated :props, CSVCMsg_SendTable::Sendprop_t, 4
end

class CSVCMsg_Print
  optional :text, :string, 1
end

class CSVCMsg_SetPause
  optional :paused, :bool, 1
end

class CSVCMsg_SetView
  optional :entity_index, :int32, 1
end

class CSVCMsg_CreateStringTable
  optional :name, :string, 1
  optional :max_entries, :int32, 2
  optional :num_entries, :int32, 3
  optional :user_data_fixed_size, :bool, 4
  optional :user_data_size, :int32, 5
  optional :user_data_size_bits, :int32, 6
  optional :flags, :int32, 7
  optional :string_data, :bytes, 8
end

class CSVCMsg_UpdateStringTable
  optional :table_id, :int32, 1
  optional :num_changed_entries, :int32, 2
  optional :string_data, :bytes, 3
end

class CSVCMsg_VoiceInit
  optional :quality, :int32, 1
  optional :codec, :string, 2
  optional :version, :int32, 3, :default => 0
end

class CSVCMsg_VoiceData
  optional :client, :int32, 1
  optional :proximity, :bool, 2
  optional :xuid, :fixed64, 3
  optional :audible_mask, :int32, 4
  optional :voice_data, :bytes, 5
  optional :caster, :bool, 6
  optional :format, VoiceDataFormat_t, 7, :default => VoiceDataFormat_t::VOICEDATA_FORMAT_ENGINE
  optional :sequence_bytes, :int32, 8
  optional :section_number, :uint32, 9
  optional :uncompressed_sample_offset, :uint32, 10
end

class CSVCMsg_FixAngle
  optional :relative, :bool, 1
  optional :angle, CMsgQAngle, 2
end

class CSVCMsg_CrosshairAngle
  optional :angle, CMsgQAngle, 1
end

class CSVCMsg_Prefetch
  optional :sound_index, :int32, 1
end

class CSVCMsg_BSPDecal
  optional :pos, CMsgVector, 1
  optional :decal_texture_index, :int32, 2
  optional :entity_index, :int32, 3
  optional :model_index, :int32, 4
  optional :low_priority, :bool, 5
end

class CSVCMsg_SplitScreen
  optional :type, ESplitScreenMessageType, 1, :default => ESplitScreenMessageType::MSG_SPLITSCREEN_ADDUSER
  optional :slot, :int32, 2
  optional :player_index, :int32, 3
end

class CSVCMsg_GetCvarValue
  optional :cookie, :int32, 1
  optional :cvar_name, :string, 2
end

class CSVCMsg_Menu
  optional :dialog_type, :int32, 1
  optional :menu_key_values, :bytes, 2
end

class CSVCMsg_UserMessage
  optional :msg_type, :int32, 1
  optional :msg_data, :bytes, 2
end

class CSVCMsg_PaintmapData
  optional :paintmap, :bytes, 1
end

class CSVCMsg_GameEvent

  class Key_t
    optional :type, :int32, 1
    optional :val_string, :string, 2
    optional :val_float, :float, 3
    optional :val_long, :int32, 4
    optional :val_short, :int32, 5
    optional :val_byte, :int32, 6
    optional :val_bool, :bool, 7
    optional :val_uint64, :uint64, 8
    optional :val_wstring, :bytes, 9
  end
  optional :event_name, :string, 1
  optional :eventid, :int32, 2
  repeated :keys, CSVCMsg_GameEvent::Key_t, 3
end

class CSVCMsg_GameEventList

  class Key_t
    optional :type, :int32, 1
    optional :name, :string, 2
  end

  class Descriptor
    optional :eventid, :int32, 1
    optional :name, :string, 2
    repeated :keys, CSVCMsg_GameEventList::Key_t, 3
  end
  repeated :descriptors, CSVCMsg_GameEventList::Descriptor, 1
end

class CSVCMsg_TempEntities
  optional :reliable, :bool, 1
  optional :num_entries, :int32, 2
  optional :entity_data, :bytes, 3
end

class CSVCMsg_PacketEntities
  optional :max_entries, :int32, 1
  optional :updated_entries, :int32, 2
  optional :is_delta, :bool, 3
  optional :update_baseline, :bool, 4
  optional :baseline, :int32, 5
  optional :delta_from, :int32, 6
  optional :entity_data, :bytes, 7
end

class CSVCMsg_Sounds

  class Sounddata_t
    optional :origin_x, :sint32, 1
    optional :origin_y, :sint32, 2
    optional :origin_z, :sint32, 3
    optional :volume, :uint32, 4
    optional :delay_value, :float, 5
    optional :sequence_number, :int32, 6
    optional :entity_index, :int32, 7
    optional :channel, :int32, 8
    optional :pitch, :int32, 9
    optional :flags, :int32, 10
    optional :sound_num, :uint32, 11
    optional :sound_num_handle, :fixed32, 12
    optional :speaker_entity, :int32, 13
    optional :random_seed, :int32, 14
    optional :sound_level, :int32, 15
    optional :is_sentence, :bool, 16
    optional :is_ambient, :bool, 17
  end
  optional :reliable_sound, :bool, 1
  repeated :sounds, CSVCMsg_Sounds::Sounddata_t, 2
end

class CSVCMsg_EntityMsg
  optional :ent_index, :int32, 1
  optional :class_id, :int32, 2
  optional :ent_data, :bytes, 3
end

class CSVCMsg_CmdKeyValues
  optional :keyvalues, :bytes, 1
end

class CSVCMsg_EncryptedData
  optional :encrypted, :bytes, 1
  optional :key_type, :int32, 2
end
