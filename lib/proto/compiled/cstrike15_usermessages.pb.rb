## Generated from cstrike15_usermessages.proto
require "beefcake"


module ECstrike15UserMessages
  CS_UM_VGUIMenu = 1
  CS_UM_Geiger = 2
  CS_UM_Train = 3
  CS_UM_HudText = 4
  CS_UM_SayText = 5
  CS_UM_SayText2 = 6
  CS_UM_TextMsg = 7
  CS_UM_HudMsg = 8
  CS_UM_ResetHud = 9
  CS_UM_GameTitle = 10
  CS_UM_Shake = 12
  CS_UM_Fade = 13
  CS_UM_Rumble = 14
  CS_UM_CloseCaption = 15
  CS_UM_CloseCaptionDirect = 16
  CS_UM_SendAudio = 17
  CS_UM_RawAudio = 18
  CS_UM_VoiceMask = 19
  CS_UM_RequestState = 20
  CS_UM_Damage = 21
  CS_UM_RadioText = 22
  CS_UM_HintText = 23
  CS_UM_KeyHintText = 24
  CS_UM_ProcessSpottedEntityUpdate = 25
  CS_UM_ReloadEffect = 26
  CS_UM_AdjustMoney = 27
  CS_UM_UpdateTeamMoney = 28
  CS_UM_StopSpectatorMode = 29
  CS_UM_KillCam = 30
  CS_UM_DesiredTimescale = 31
  CS_UM_CurrentTimescale = 32
  CS_UM_AchievementEvent = 33
  CS_UM_MatchEndConditions = 34
  CS_UM_DisconnectToLobby = 35
  CS_UM_PlayerStatsUpdate = 36
  CS_UM_DisplayInventory = 37
  CS_UM_WarmupHasEnded = 38
  CS_UM_ClientInfo = 39
  CS_UM_XRankGet = 40
  CS_UM_XRankUpd = 41
  CS_UM_CallVoteFailed = 45
  CS_UM_VoteStart = 46
  CS_UM_VotePass = 47
  CS_UM_VoteFailed = 48
  CS_UM_VoteSetup = 49
  CS_UM_ServerRankRevealAll = 50
  CS_UM_SendLastKillerDamageToClient = 51
  CS_UM_ServerRankUpdate = 52
  CS_UM_ItemPickup = 53
  CS_UM_ShowMenu = 54
  CS_UM_BarTime = 55
  CS_UM_AmmoDenied = 56
  CS_UM_MarkAchievement = 57
  CS_UM_MatchStatsUpdate = 58
  CS_UM_ItemDrop = 59
  CS_UM_GlowPropTurnOff = 60
  CS_UM_SendPlayerItemDrops = 61
  CS_UM_RoundBackupFilenames = 62
  CS_UM_SendPlayerItemFound = 63
  CS_UM_ReportHit = 64
  CS_UM_XpUpdate = 65
  CS_UM_QuestProgress = 66
  CS_UM_ScoreLeaderboardData = 67
end

class CCSUsrMsg_VGUIMenu
  include Beefcake::Message

  class Subkey
    include Beefcake::Message
  end
end

class CCSUsrMsg_Geiger
  include Beefcake::Message
end

class CCSUsrMsg_Train
  include Beefcake::Message
end

class CCSUsrMsg_HudText
  include Beefcake::Message
end

class CCSUsrMsg_SayText
  include Beefcake::Message
end

class CCSUsrMsg_SayText2
  include Beefcake::Message
end

class CCSUsrMsg_TextMsg
  include Beefcake::Message
end

class CCSUsrMsg_HudMsg
  include Beefcake::Message
end

class CCSUsrMsg_Shake
  include Beefcake::Message
end

class CCSUsrMsg_Fade
  include Beefcake::Message
end

class CCSUsrMsg_Rumble
  include Beefcake::Message
end

class CCSUsrMsg_CloseCaption
  include Beefcake::Message
end

class CCSUsrMsg_CloseCaptionDirect
  include Beefcake::Message
end

class CCSUsrMsg_SendAudio
  include Beefcake::Message
end

class CCSUsrMsg_RawAudio
  include Beefcake::Message
end

class CCSUsrMsg_VoiceMask
  include Beefcake::Message

  class PlayerMask
    include Beefcake::Message
  end
end

class CCSUsrMsg_Damage
  include Beefcake::Message
end

class CCSUsrMsg_RadioText
  include Beefcake::Message
end

class CCSUsrMsg_HintText
  include Beefcake::Message
end

class CCSUsrMsg_KeyHintText
  include Beefcake::Message
end

class CCSUsrMsg_ProcessSpottedEntityUpdate
  include Beefcake::Message

  class SpottedEntityUpdate
    include Beefcake::Message
  end
end

class CCSUsrMsg_SendPlayerItemDrops
  include Beefcake::Message
end

class CCSUsrMsg_SendPlayerItemFound
  include Beefcake::Message
end

class CCSUsrMsg_ReloadEffect
  include Beefcake::Message
end

class CCSUsrMsg_AdjustMoney
  include Beefcake::Message
end

class CCSUsrMsg_ReportHit
  include Beefcake::Message
end

class CCSUsrMsg_KillCam
  include Beefcake::Message
end

class CCSUsrMsg_DesiredTimescale
  include Beefcake::Message
end

class CCSUsrMsg_CurrentTimescale
  include Beefcake::Message
end

class CCSUsrMsg_AchievementEvent
  include Beefcake::Message
end

class CCSUsrMsg_MatchEndConditions
  include Beefcake::Message
end

class CCSUsrMsg_PlayerStatsUpdate
  include Beefcake::Message

  class Stat
    include Beefcake::Message
  end
end

class CCSUsrMsg_DisplayInventory
  include Beefcake::Message
end

class CCSUsrMsg_QuestProgress
  include Beefcake::Message
end

class CCSUsrMsg_ScoreLeaderboardData
  include Beefcake::Message
end

class CCSUsrMsg_XRankGet
  include Beefcake::Message
end

class CCSUsrMsg_XRankUpd
  include Beefcake::Message
end

class CCSUsrMsg_CallVoteFailed
  include Beefcake::Message
end

class CCSUsrMsg_VoteStart
  include Beefcake::Message
end

class CCSUsrMsg_VotePass
  include Beefcake::Message
end

class CCSUsrMsg_VoteFailed
  include Beefcake::Message
end

class CCSUsrMsg_VoteSetup
  include Beefcake::Message
end

class CCSUsrMsg_SendLastKillerDamageToClient
  include Beefcake::Message
end

class CCSUsrMsg_ServerRankUpdate
  include Beefcake::Message

  class RankUpdate
    include Beefcake::Message
  end
end

class CCSUsrMsg_XpUpdate
  include Beefcake::Message
end

class CCSUsrMsg_ItemPickup
  include Beefcake::Message
end

class CCSUsrMsg_ShowMenu
  include Beefcake::Message
end

class CCSUsrMsg_BarTime
  include Beefcake::Message
end

class CCSUsrMsg_AmmoDenied
  include Beefcake::Message
end

class CCSUsrMsg_MarkAchievement
  include Beefcake::Message
end

class CCSUsrMsg_MatchStatsUpdate
  include Beefcake::Message
end

class CCSUsrMsg_ItemDrop
  include Beefcake::Message
end

class CCSUsrMsg_GlowPropTurnOff
  include Beefcake::Message
end

class CCSUsrMsg_RoundBackupFilenames
  include Beefcake::Message
end

class CCSUsrMsg_ResetHud
  include Beefcake::Message
end

class CCSUsrMsg_GameTitle
  include Beefcake::Message
end

class CCSUsrMsg_RequestState
  include Beefcake::Message
end

class CCSUsrMsg_StopSpectatorMode
  include Beefcake::Message
end

class CCSUsrMsg_DisconnectToLobby
  include Beefcake::Message
end

class CCSUsrMsg_WarmupHasEnded
  include Beefcake::Message
end

class CCSUsrMsg_ClientInfo
  include Beefcake::Message
end

class CCSUsrMsg_ServerRankRevealAll
  include Beefcake::Message
end

class CCSUsrMsg_VGUIMenu

  class Subkey
    optional :name, :string, 1
    optional :str, :string, 2
  end
  optional :name, :string, 1
  optional :show, :bool, 2
  repeated :subkeys, CCSUsrMsg_VGUIMenu::Subkey, 3
end

class CCSUsrMsg_Geiger
  optional :range, :int32, 1
end

class CCSUsrMsg_Train
  optional :train, :int32, 1
end

class CCSUsrMsg_HudText
  optional :text, :string, 1
end

class CCSUsrMsg_SayText
  optional :ent_idx, :int32, 1
  optional :text, :string, 2
  optional :chat, :bool, 3
  optional :textallchat, :bool, 4
end

class CCSUsrMsg_SayText2
  optional :ent_idx, :int32, 1
  optional :chat, :bool, 2
  optional :msg_name, :string, 3
  repeated :params, :string, 4
  optional :textallchat, :bool, 5
end

class CCSUsrMsg_TextMsg
  optional :msg_dst, :int32, 1
  repeated :params, :string, 3
end

class CCSUsrMsg_HudMsg
  optional :channel, :int32, 1
  optional :pos, CMsgVector2D, 2
  optional :clr1, CMsgRGBA, 3
  optional :clr2, CMsgRGBA, 4
  optional :effect, :int32, 5
  optional :fade_in_time, :float, 6
  optional :fade_out_time, :float, 7
  optional :hold_time, :float, 9
  optional :fx_time, :float, 10
  optional :text, :string, 11
end

class CCSUsrMsg_Shake
  optional :command, :int32, 1
  optional :local_amplitude, :float, 2
  optional :frequency, :float, 3
  optional :duration, :float, 4
end

class CCSUsrMsg_Fade
  optional :duration, :int32, 1
  optional :hold_time, :int32, 2
  optional :flags, :int32, 3
  optional :clr, CMsgRGBA, 4
end

class CCSUsrMsg_Rumble
  optional :index, :int32, 1
  optional :data, :int32, 2
  optional :flags, :int32, 3
end

class CCSUsrMsg_CloseCaption
  optional :hash, :uint32, 1
  optional :duration, :int32, 2
  optional :from_player, :bool, 3
end

class CCSUsrMsg_CloseCaptionDirect
  optional :hash, :uint32, 1
  optional :duration, :int32, 2
  optional :from_player, :bool, 3
end

class CCSUsrMsg_SendAudio
  optional :radio_sound, :string, 1
end

class CCSUsrMsg_RawAudio
  optional :pitch, :int32, 1
  optional :entidx, :int32, 2
  optional :duration, :float, 3
  optional :voice_filename, :string, 4
end

class CCSUsrMsg_VoiceMask

  class PlayerMask
    optional :game_rules_mask, :int32, 1
    optional :ban_masks, :int32, 2
  end
  repeated :player_masks, CCSUsrMsg_VoiceMask::PlayerMask, 1
  optional :player_mod_enable, :bool, 2
end

class CCSUsrMsg_Damage
  optional :amount, :int32, 1
  optional :inflictor_world_pos, CMsgVector, 2
  optional :victim_entindex, :int32, 3
end

class CCSUsrMsg_RadioText
  optional :msg_dst, :int32, 1
  optional :client, :int32, 2
  optional :msg_name, :string, 3
  repeated :params, :string, 4
end

class CCSUsrMsg_HintText
  optional :text, :string, 1
end

class CCSUsrMsg_KeyHintText
  repeated :hints, :string, 1
end

class CCSUsrMsg_ProcessSpottedEntityUpdate

  class SpottedEntityUpdate
    optional :entity_idx, :int32, 1
    optional :class_id, :int32, 2
    optional :origin_x, :int32, 3
    optional :origin_y, :int32, 4
    optional :origin_z, :int32, 5
    optional :angle_y, :int32, 6
    optional :defuser, :bool, 7
    optional :player_has_defuser, :bool, 8
    optional :player_has_c4, :bool, 9
  end
  optional :new_update, :bool, 1
  repeated :entity_updates, CCSUsrMsg_ProcessSpottedEntityUpdate::SpottedEntityUpdate, 2
end

class CCSUsrMsg_SendPlayerItemDrops
  repeated :entity_updates, CEconItemPreviewDataBlock, 1
end

class CCSUsrMsg_SendPlayerItemFound
  optional :iteminfo, CEconItemPreviewDataBlock, 1
  optional :entindex, :int32, 2
end

class CCSUsrMsg_ReloadEffect
  optional :entidx, :int32, 1
  optional :actanim, :int32, 2
  optional :origin_x, :float, 3
  optional :origin_y, :float, 4
  optional :origin_z, :float, 5
end

class CCSUsrMsg_AdjustMoney
  optional :amount, :int32, 1
end

class CCSUsrMsg_ReportHit
  optional :pos_x, :float, 1
  optional :pos_y, :float, 2
  optional :timestamp, :float, 4
  optional :pos_z, :float, 3
end

class CCSUsrMsg_KillCam
  optional :obs_mode, :int32, 1
  optional :first_target, :int32, 2
  optional :second_target, :int32, 3
end

class CCSUsrMsg_DesiredTimescale
  optional :desired_timescale, :float, 1
  optional :duration_realtime_sec, :float, 2
  optional :interpolator_type, :int32, 3
  optional :start_blend_time, :float, 4
end

class CCSUsrMsg_CurrentTimescale
  optional :cur_timescale, :float, 1
end

class CCSUsrMsg_AchievementEvent
  optional :achievement, :int32, 1
  optional :count, :int32, 2
  optional :user_id, :int32, 3
end

class CCSUsrMsg_MatchEndConditions
  optional :fraglimit, :int32, 1
  optional :mp_maxrounds, :int32, 2
  optional :mp_winlimit, :int32, 3
  optional :mp_timelimit, :int32, 4
end

class CCSUsrMsg_PlayerStatsUpdate

  class Stat
    optional :idx, :int32, 1
    optional :delta, :int32, 2
  end
  optional :version, :int32, 1
  repeated :stats, CCSUsrMsg_PlayerStatsUpdate::Stat, 4
  optional :user_id, :int32, 5
  optional :crc, :int32, 6
end

class CCSUsrMsg_DisplayInventory
  optional :display, :bool, 1
  optional :user_id, :int32, 2
end

class CCSUsrMsg_QuestProgress
  optional :quest_id, :uint32, 1
  optional :normal_points, :uint32, 2
  optional :bonus_points, :uint32, 3
  optional :is_event_quest, :bool, 4
end

class CCSUsrMsg_ScoreLeaderboardData
  optional :data, ScoreLeaderboardData, 1
end

class CCSUsrMsg_XRankGet
  optional :mode_idx, :int32, 1
  optional :controller, :int32, 2
end

class CCSUsrMsg_XRankUpd
  optional :mode_idx, :int32, 1
  optional :controller, :int32, 2
  optional :ranking, :int32, 3
end

class CCSUsrMsg_CallVoteFailed
  optional :reason, :int32, 1
  optional :time, :int32, 2
end

class CCSUsrMsg_VoteStart
  optional :team, :int32, 1
  optional :ent_idx, :int32, 2
  optional :vote_type, :int32, 3
  optional :disp_str, :string, 4
  optional :details_str, :string, 5
  optional :other_team_str, :string, 6
  optional :is_yes_no_vote, :bool, 7
end

class CCSUsrMsg_VotePass
  optional :team, :int32, 1
  optional :vote_type, :int32, 2
  optional :disp_str, :string, 3
  optional :details_str, :string, 4
end

class CCSUsrMsg_VoteFailed
  optional :team, :int32, 1
  optional :reason, :int32, 2
end

class CCSUsrMsg_VoteSetup
  repeated :potential_issues, :string, 1
end

class CCSUsrMsg_SendLastKillerDamageToClient
  optional :num_hits_given, :int32, 1
  optional :damage_given, :int32, 2
  optional :num_hits_taken, :int32, 3
  optional :damage_taken, :int32, 4
end

class CCSUsrMsg_ServerRankUpdate

  class RankUpdate
    optional :account_id, :int32, 1
    optional :rank_old, :int32, 2
    optional :rank_new, :int32, 3
    optional :num_wins, :int32, 4
    optional :rank_change, :float, 5
  end
  repeated :rank_update, CCSUsrMsg_ServerRankUpdate::RankUpdate, 1
end

class CCSUsrMsg_XpUpdate
  optional :data, CMsgGCCstrike15_v2_GC2ServerNotifyXPRewarded, 1
end

class CCSUsrMsg_ItemPickup
  optional :item, :string, 1
end

class CCSUsrMsg_ShowMenu
  optional :bits_valid_slots, :int32, 1
  optional :display_time, :int32, 2
  optional :menu_string, :string, 3
end

class CCSUsrMsg_BarTime
  optional :time, :string, 1
end

class CCSUsrMsg_AmmoDenied
  optional :ammoIdx, :int32, 1
end

class CCSUsrMsg_MarkAchievement
  optional :achievement, :string, 1
end

class CCSUsrMsg_MatchStatsUpdate
  optional :update, :string, 1
end

class CCSUsrMsg_ItemDrop
  optional :itemid, :int64, 1
  optional :death, :bool, 2
end

class CCSUsrMsg_GlowPropTurnOff
  optional :entidx, :int32, 1
end

class CCSUsrMsg_RoundBackupFilenames
  optional :count, :int32, 1
  optional :index, :int32, 2
  optional :filename, :string, 3
  optional :nicename, :string, 4
end

class CCSUsrMsg_ResetHud
  optional :reset, :bool, 1
end

class CCSUsrMsg_GameTitle
  optional :dummy, :int32, 1
end

class CCSUsrMsg_RequestState
  optional :dummy, :int32, 1
end

class CCSUsrMsg_StopSpectatorMode
  optional :dummy, :int32, 1
end

class CCSUsrMsg_DisconnectToLobby
  optional :dummy, :int32, 1
end

class CCSUsrMsg_WarmupHasEnded
  optional :dummy, :int32, 1
end

class CCSUsrMsg_ClientInfo
  optional :dummy, :int32, 1
end

class CCSUsrMsg_ServerRankRevealAll
  optional :seconds_till_shutdown, :int32, 1
end
