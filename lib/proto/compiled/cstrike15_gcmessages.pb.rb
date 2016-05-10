## Generated from cstrike15_gcmessages.proto
require "beefcake"


module ECsgoGCMsg
  k_EMsgGCCStrike15_v2_Base = 9100
  k_EMsgGCCStrike15_v2_MatchmakingStart = 9101
  k_EMsgGCCStrike15_v2_MatchmakingStop = 9102
  k_EMsgGCCStrike15_v2_MatchmakingClient2ServerPing = 9103
  k_EMsgGCCStrike15_v2_MatchmakingGC2ClientUpdate = 9104
  k_EMsgGCCStrike15_v2_MatchmakingGC2ServerReserve = 9105
  k_EMsgGCCStrike15_v2_MatchmakingServerReservationResponse = 9106
  k_EMsgGCCStrike15_v2_MatchmakingGC2ClientReserve = 9107
  k_EMsgGCCStrike15_v2_MatchmakingServerRoundStats = 9108
  k_EMsgGCCStrike15_v2_MatchmakingClient2GCHello = 9109
  k_EMsgGCCStrike15_v2_MatchmakingGC2ClientHello = 9110
  k_EMsgGCCStrike15_v2_MatchmakingServerMatchEnd = 9111
  k_EMsgGCCStrike15_v2_MatchmakingGC2ClientAbandon = 9112
  k_EMsgGCCStrike15_v2_MatchmakingServer2GCKick = 9113
  k_EMsgGCCStrike15_v2_MatchmakingGC2ServerConfirm = 9114
  k_EMsgGCCStrike15_v2_MatchmakingGCOperationalStats = 9115
  k_EMsgGCCStrike15_v2_MatchmakingGC2ServerRankUpdate = 9116
  k_EMsgGCCStrike15_v2_MatchmakingOperator2GCBlogUpdate = 9117
  k_EMsgGCCStrike15_v2_ServerNotificationForUserPenalty = 9118
  k_EMsgGCCStrike15_v2_ClientReportPlayer = 9119
  k_EMsgGCCStrike15_v2_ClientReportServer = 9120
  k_EMsgGCCStrike15_v2_ClientCommendPlayer = 9121
  k_EMsgGCCStrike15_v2_ClientReportResponse = 9122
  k_EMsgGCCStrike15_v2_ClientCommendPlayerQuery = 9123
  k_EMsgGCCStrike15_v2_ClientCommendPlayerQueryResponse = 9124
  k_EMsgGCCStrike15_v2_WatchInfoUsers = 9126
  k_EMsgGCCStrike15_v2_ClientRequestPlayersProfile = 9127
  k_EMsgGCCStrike15_v2_PlayersProfile = 9128
  k_EMsgGCCStrike15_v2_SetMyMedalsInfo = 9129
  k_EMsgGCCStrike15_v2_PlayerOverwatchCaseUpdate = 9131
  k_EMsgGCCStrike15_v2_PlayerOverwatchCaseAssignment = 9132
  k_EMsgGCCStrike15_v2_PlayerOverwatchCaseStatus = 9133
  k_EMsgGCCStrike15_v2_GC2ClientTextMsg = 9134
  k_EMsgGCCStrike15_v2_Client2GCTextMsg = 9135
  k_EMsgGCCStrike15_v2_MatchEndRunRewardDrops = 9136
  k_EMsgGCCStrike15_v2_MatchEndRewardDropsNotification = 9137
  k_EMsgGCCStrike15_v2_ClientRequestWatchInfoFriends2 = 9138
  k_EMsgGCCStrike15_v2_MatchList = 9139
  k_EMsgGCCStrike15_v2_MatchListRequestCurrentLiveGames = 9140
  k_EMsgGCCStrike15_v2_MatchListRequestRecentUserGames = 9141
  k_EMsgGCCStrike15_v2_GC2ServerReservationUpdate = 9142
  k_EMsgGCCStrike15_v2_ClientVarValueNotificationInfo = 9144
  k_EMsgGCCStrike15_v2_TournamentMatchRewardDropsNotification = 9145
  k_EMsgGCCStrike15_v2_MatchListRequestTournamentGames = 9146
  k_EMsgGCCStrike15_v2_MatchListRequestFullGameInfo = 9147
  k_EMsgGCCStrike15_v2_GiftsLeaderboardRequest = 9148
  k_EMsgGCCStrike15_v2_GiftsLeaderboardResponse = 9149
  k_EMsgGCCStrike15_v2_ServerVarValueNotificationInfo = 9150
  k_EMsgGCToGCReloadVersions = 9151
  k_EMsgGCCStrike15_v2_ClientSubmitSurveyVote = 9152
  k_EMsgGCCStrike15_v2_Server2GCClientValidate = 9153
  k_EMsgGCCStrike15_v2_MatchListRequestLiveGameForUser = 9154
  k_EMsgGCCStrike15_v2_Server2GCPureServerValidationFailure = 9155
  k_EMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockRequest = 9156
  k_EMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockResponse = 9157
  k_EMsgGCCStrike15_v2_AccountPrivacySettings = 9158
  k_EMsgGCCStrike15_v2_SetMyActivityInfo = 9159
  k_EMsgGCCStrike15_v2_MatchListRequestTournamentPredictions = 9160
  k_EMsgGCCStrike15_v2_MatchListUploadTournamentPredictions = 9161
  k_EMsgGCCStrike15_v2_DraftSummary = 9162
  k_EMsgGCCStrike15_v2_ClientRequestJoinFriendData = 9163
  k_EMsgGCCStrike15_v2_ClientRequestJoinServerData = 9164
  k_EMsgGCCStrike15_v2_ClientRequestNewMission = 9165
  k_EMsgGCCStrike15_v2_GC2ServerNotifyXPRewarded = 9166
  k_EMsgGCCStrike15_v2_GC2ClientTournamentInfo = 9167
  k_EMsgGC_GlobalGame_Subscribe = 9168
  k_EMsgGC_GlobalGame_Unsubscribe = 9169
  k_EMsgGC_GlobalGame_Play = 9170
  k_EMsgGCCStrike15_v2_AcknowledgePenalty = 9171
  k_EMsgGCCStrike15_v2_Client2GCRequestPrestigeCoin = 9172
  k_EMsgGCCStrike15_v2_GC2ClientGlobalStats = 9173
  k_EMsgGCCStrike15_v2_Client2GCStreamUnlock = 9174
  k_EMsgGCCStrike15_v2_FantasyRequestClientData = 9175
  k_EMsgGCCStrike15_v2_FantasyUpdateClientData = 9176
end

class GameServerPing
  include Beefcake::Message
end

class DetailedSearchStatistic
  include Beefcake::Message
end

class TournamentPlayer
  include Beefcake::Message
end

class TournamentTeam
  include Beefcake::Message
end

class TournamentEvent
  include Beefcake::Message
end

class GlobalStatistics
  include Beefcake::Message
end

class OperationalStatisticDescription
  include Beefcake::Message
end

class OperationalStatisticElement
  include Beefcake::Message
end

class OperationalStatisticsPacket
  include Beefcake::Message
end

class PlayerRankingInfo
  include Beefcake::Message
end

class PlayerCommendationInfo
  include Beefcake::Message
end

class PlayerMedalsInfo
  include Beefcake::Message
end

class AccountActivity
  include Beefcake::Message
end

class TournamentMatchSetup
  include Beefcake::Message
end

class ServerHltvInfo
  include Beefcake::Message
end

class IpAddressMask
  include Beefcake::Message
end

class XpProgressData
  include Beefcake::Message
end

class MatchEndItemUpdates
  include Beefcake::Message
end

class ScoreLeaderboardData
  include Beefcake::Message

  class Entry
    include Beefcake::Message
  end

  class AccountEntries
    include Beefcake::Message
  end
end

class PlayerQuestData
  include Beefcake::Message

  class QuestItemData
    include Beefcake::Message
  end
end

class CMsgGC_ServerQuestUpdateData
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingGCOperationalStats
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingGC2ServerConfirm
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_GC2ServerReservationUpdate
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingStart
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingStop
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingClient2ServerPing
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientUpdate
  include Beefcake::Message

  class Note
    include Beefcake::Message
  end
end

class CDataGCCStrike15_v2_TournamentMatchDraft
  include Beefcake::Message

  class Entry
    include Beefcake::Message
  end
end

class CPreMatchInfoData
  include Beefcake::Message

  class TeamStats
    include Beefcake::Message
  end
end

class CMsgGCCStrike15_v2_MatchmakingGC2ServerReserve
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingServerReservationResponse
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientReserve
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingServerRoundStats
  include Beefcake::Message

  class DropInfo
    include Beefcake::Message
  end
end

class CMsgGCCStrike15_v2_MatchmakingServerMatchEnd
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingClient2GCHello
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientHello
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_AccountPrivacySettings
  include Beefcake::Message

  class Setting
    include Beefcake::Message
  end
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientAbandon
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingServer2GCKick
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingGC2ServerRankUpdate
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchmakingOperator2GCBlogUpdate
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ServerNotificationForUserPenalty
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientReportPlayer
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientCommendPlayer
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientReportServer
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientReportResponse
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientRequestWatchInfoFriends
  include Beefcake::Message
end

class WatchableMatchInfo
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientRequestJoinFriendData
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientRequestJoinServerData
  include Beefcake::Message
end

class CMsgGCCstrike15_v2_ClientRequestNewMission
  include Beefcake::Message
end

class CMsgGCCstrike15_v2_GC2ServerNotifyXPRewarded
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_WatchInfoUsers
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientRequestPlayersProfile
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_PlayersProfile
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_PlayerOverwatchCaseUpdate
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_PlayerOverwatchCaseAssignment
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_PlayerOverwatchCaseStatus
  include Beefcake::Message
end

class CClientHeaderOverwatchEvidence
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_GC2ClientTextMsg
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Client2GCTextMsg
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchEndRunRewardDrops
  include Beefcake::Message
end

class CEconItemPreviewDataBlock
  include Beefcake::Message

  class Sticker
    include Beefcake::Message
  end
end

class CMsgGCCStrike15_v2_MatchEndRewardDropsNotification
  include Beefcake::Message
end

class CMsgItemAcknowledged
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockRequest
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockResponse
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_TournamentMatchRewardDropsNotification
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchListRequestCurrentLiveGames
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchListRequestLiveGameForUser
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchListRequestRecentUserGames
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchListRequestTournamentGames
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchListRequestFullGameInfo
  include Beefcake::Message
end

class CDataGCCStrike15_v2_MatchInfo
  include Beefcake::Message
end

class CDataGCCStrike15_v2_TournamentGroupTeam
  include Beefcake::Message
end

class CDataGCCStrike15_v2_TournamentGroup
  include Beefcake::Message

  class Picks
    include Beefcake::Message
  end
end

class CDataGCCStrike15_v2_TournamentSection
  include Beefcake::Message
end

class CDataGCCStrike15_v2_TournamentInfo
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_MatchList
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Predictions
  include Beefcake::Message

  class GroupMatchTeamPick
    include Beefcake::Message
  end
end

class CMsgGCCStrike15_v2_Fantasy
  include Beefcake::Message

  class FantasySlot
    include Beefcake::Message
  end

  class FantasyTeam
    include Beefcake::Message
  end
end

class CAttribute_String
  include Beefcake::Message
end

class CMsgGCToGCReloadVersions
  include Beefcake::Message
end

class CMsgCStrike15Welcome
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ClientVarValueNotificationInfo
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_ServerVarValueNotificationInfo
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_GiftsLeaderboardRequest
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_GiftsLeaderboardResponse
  include Beefcake::Message

  class GiftLeaderboardEntry
    include Beefcake::Message
  end
end

class CMsgGCCStrike15_v2_ClientSubmitSurveyVote
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Server2GCClientValidate
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Server2GCPureServerValidationFailure
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_GC2ClientTournamentInfo
  include Beefcake::Message
end

class CSOEconCoupon
  include Beefcake::Message
end

class CSOQuestProgress
  include Beefcake::Message
end

class CSOPersonaDataPublic
  include Beefcake::Message
end

class CMsgGC_GlobalGame_Subscribe
  include Beefcake::Message
end

class CMsgGC_GlobalGame_Unsubscribe
  include Beefcake::Message
end

class CMsgGC_GlobalGame_Play
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_AcknowledgePenalty
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Client2GCRequestPrestigeCoin
  include Beefcake::Message
end

class CMsgGCCStrike15_v2_Client2GCStreamUnlock
  include Beefcake::Message
end

class GameServerPing
  optional :gameserver_id, :uint64, 1
  optional :ping, :int32, 2
  optional :ip, :uint32, 3
  optional :port, :uint32, 4
  optional :instances, :uint32, 5
end

class DetailedSearchStatistic
  optional :game_type, :uint32, 1
  optional :search_time_avg, :uint32, 2
  optional :players_searching, :uint32, 4
end

class TournamentPlayer
  optional :account_id, :uint32, 1
  optional :player_nick, :string, 2
  optional :player_name, :string, 3
  optional :player_dob, :uint32, 4
  optional :player_flag, :string, 5
  optional :player_location, :string, 6
  optional :player_desc, :string, 7
end

class TournamentTeam
  optional :team_id, :int32, 1
  optional :team_tag, :string, 2
  optional :team_flag, :string, 3
  optional :team_name, :string, 4
  repeated :players, TournamentPlayer, 5
end

class TournamentEvent
  optional :event_id, :int32, 1
  optional :event_tag, :string, 2
  optional :event_name, :string, 3
  optional :event_time_start, :uint32, 4
  optional :event_time_end, :uint32, 5
  optional :event_public, :int32, 6
  optional :event_stage_id, :int32, 7
  optional :event_stage_name, :string, 8
  optional :active_section_id, :uint32, 9
end

class GlobalStatistics
  optional :players_online, :uint32, 1
  optional :servers_online, :uint32, 2
  optional :players_searching, :uint32, 3
  optional :servers_available, :uint32, 4
  optional :ongoing_matches, :uint32, 5
  optional :search_time_avg, :uint32, 6
  repeated :search_statistics, DetailedSearchStatistic, 7
  optional :main_post_url, :string, 8
  optional :required_appid_version, :uint32, 9
  optional :pricesheet_version, :uint32, 10
  optional :twitch_streams_version, :uint32, 11
  optional :active_tournament_eventid, :uint32, 12
  optional :active_survey_id, :uint32, 13
end

class OperationalStatisticDescription
  optional :name, :string, 1
  optional :idkey, :uint32, 2
end

class OperationalStatisticElement
  optional :idkey, :uint32, 1
  repeated :values, :int32, 2
end

class OperationalStatisticsPacket
  optional :packetid, :int32, 1
  optional :mstimestamp, :int32, 2
  repeated :values, OperationalStatisticElement, 3
end

class PlayerRankingInfo
  optional :account_id, :uint32, 1
  optional :rank_id, :uint32, 2
  optional :wins, :uint32, 3
  optional :rank_change, :float, 4
end

class PlayerCommendationInfo
  optional :cmd_friendly, :uint32, 1
  optional :cmd_teaching, :uint32, 2
  optional :cmd_leader, :uint32, 4
end

class PlayerMedalsInfo
  optional :medal_team, :uint32, 1
  optional :medal_combat, :uint32, 2
  optional :medal_weapon, :uint32, 3
  optional :medal_global, :uint32, 4
  optional :medal_arms, :uint32, 5
  repeated :display_items_defidx, :uint32, 7
  optional :featured_display_item_defidx, :uint32, 8
end

class AccountActivity
  optional :activity, :uint32, 1
  optional :mode, :uint32, 2
  optional :map, :uint32, 3
end

class TournamentMatchSetup
  optional :event_id, :int32, 1
  optional :team_id_ct, :int32, 2
  optional :team_id_t, :int32, 3
  optional :event_stage_id, :int32, 4
end

class ServerHltvInfo
  optional :tv_udp_port, :uint32, 1
  optional :tv_watch_key, :uint64, 2
  optional :tv_slots, :uint32, 3
  optional :tv_clients, :uint32, 4
  optional :tv_proxies, :uint32, 5
  optional :tv_time, :uint32, 6
  optional :game_type, :uint32, 8
  optional :game_mapgroup, :string, 9
  optional :game_map, :string, 10
  optional :tv_master_steamid, :uint64, 11
  optional :tv_local_slots, :uint32, 12
  optional :tv_local_clients, :uint32, 13
  optional :tv_local_proxies, :uint32, 14
  optional :tv_relay_slots, :uint32, 15
  optional :tv_relay_clients, :uint32, 16
  optional :tv_relay_proxies, :uint32, 17
  optional :tv_relay_address, :uint32, 18
  optional :tv_relay_port, :uint32, 19
  optional :tv_relay_steamid, :uint64, 20
end

class IpAddressMask
  optional :a, :uint32, 1
  optional :b, :uint32, 2
  optional :c, :uint32, 3
  optional :d, :uint32, 4
  optional :bits, :uint32, 5
  optional :token, :uint32, 6
end

class XpProgressData
  optional :xp_points, :uint32, 1
  optional :xp_category, :int32, 2
end

class MatchEndItemUpdates
  optional :item_id, :uint64, 1
  optional :item_attr_defidx, :uint32, 2
  optional :item_attr_delta_value, :uint32, 3
end

class ScoreLeaderboardData

  class Entry
    optional :tag, :uint32, 1
    optional :val, :uint32, 2
  end

  class AccountEntries
    optional :accountid, :uint32, 1
    repeated :entries, ScoreLeaderboardData::Entry, 2
  end
  optional :quest_id, :uint64, 1
  optional :score, :uint32, 2
  repeated :accountentries, ScoreLeaderboardData::AccountEntries, 3
  repeated :matchentries, ScoreLeaderboardData::Entry, 5
end

class PlayerQuestData

  class QuestItemData
    optional :quest_id, :uint64, 1
    optional :quest_normal_points_earned, :int32, 2
    optional :quest_bonus_points_earned, :int32, 3
  end
  optional :quester_account_id, :uint32, 1
  repeated :quest_item_data, PlayerQuestData::QuestItemData, 2
  repeated :xp_progress_data, XpProgressData, 3
  optional :time_played, :uint32, 4
  optional :mm_game_mode, :uint32, 5
  repeated :item_updates, MatchEndItemUpdates, 6
end

class CMsgGC_ServerQuestUpdateData
  repeated :player_quest_data, PlayerQuestData, 1
  optional :binary_data, :bytes, 2
  optional :mm_game_mode, :uint32, 3
  optional :missionlbsdata, ScoreLeaderboardData, 4
end

class CMsgGCCStrike15_v2_MatchmakingGCOperationalStats
  optional :packetid, :int32, 1
  repeated :namekeys, OperationalStatisticDescription, 2
  repeated :packets, OperationalStatisticsPacket, 3
end

class CMsgGCCStrike15_v2_MatchmakingGC2ServerConfirm
  optional :token, :uint32, 1
  optional :stamp, :uint32, 2
  optional :exchange, :uint64, 3
end

class CMsgGCCStrike15_v2_GC2ServerReservationUpdate
  optional :viewers_external_total, :uint32, 1
  optional :viewers_external_steam, :uint32, 2
end

class CMsgGCCStrike15_v2_MatchmakingStart
  repeated :account_ids, :uint32, 1
  optional :game_type, :uint32, 2
  optional :ticket_data, :string, 3
  optional :client_version, :uint32, 4
  optional :tournament_match, TournamentMatchSetup, 5
end

class CMsgGCCStrike15_v2_MatchmakingStop
  optional :abandon, :int32, 1
end

class CMsgGCCStrike15_v2_MatchmakingClient2ServerPing
  repeated :gameserverpings, GameServerPing, 1
  optional :offset_index, :int32, 2
  optional :final_batch, :int32, 3
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientUpdate

  class Note
    optional :type, :int32, 1
    optional :region_id, :int32, 2
    optional :region_r, :float, 3
    optional :distance, :float, 4
  end
  optional :matchmaking, :int32, 1
  repeated :waiting_account_id_sessions, :uint32, 2
  optional :error, :string, 3
  repeated :ongoingmatch_account_id_sessions, :uint32, 6
  optional :global_stats, GlobalStatistics, 7
  repeated :failping_account_id_sessions, :uint32, 8
  repeated :penalty_account_id_sessions, :uint32, 9
  repeated :failready_account_id_sessions, :uint32, 10
  repeated :vacbanned_account_id_sessions, :uint32, 11
  optional :server_ipaddress_mask, IpAddressMask, 12
  repeated :notes, CMsgGCCStrike15_v2_MatchmakingGC2ClientUpdate::Note, 13
  repeated :penalty_account_id_sessions_green, :uint32, 14
  repeated :insufficientlevel_sessions, :uint32, 15
end

class CDataGCCStrike15_v2_TournamentMatchDraft

  class Entry
    optional :mapid, :int32, 1
    optional :team_id_ct, :int32, 2
  end
  optional :event_id, :int32, 1
  optional :event_stage_id, :int32, 2
  optional :team_id_0, :int32, 3
  optional :team_id_1, :int32, 4
  optional :maps_count, :int32, 5
  optional :maps_current, :int32, 6
  optional :team_id_start, :int32, 7
  optional :team_id_veto1, :int32, 8
  optional :team_id_pickn, :int32, 9
  repeated :drafts, CDataGCCStrike15_v2_TournamentMatchDraft::Entry, 10
end

class CPreMatchInfoData

  class TeamStats
    optional :match_info_idxtxt, :int32, 1
    optional :match_info_txt, :string, 2
    repeated :match_info_teams, :string, 3
  end
  optional :predictions_pct, :int32, 1
  optional :draft, CDataGCCStrike15_v2_TournamentMatchDraft, 4
  repeated :stats, CPreMatchInfoData::TeamStats, 5
end

class CMsgGCCStrike15_v2_MatchmakingGC2ServerReserve
  repeated :account_ids, :uint32, 1
  optional :game_type, :uint32, 2
  optional :match_id, :uint64, 3
  optional :server_version, :uint32, 4
  repeated :rankings, PlayerRankingInfo, 5
  optional :encryption_key, :uint64, 6
  optional :encryption_key_pub, :uint64, 7
  repeated :party_ids, :uint32, 8
  repeated :whitelist, IpAddressMask, 9
  optional :tv_master_steamid, :uint64, 10
  optional :tournament_event, TournamentEvent, 11
  repeated :tournament_teams, TournamentTeam, 12
  repeated :tournament_casters_account_ids, :uint32, 13
  optional :tv_relay_steamid, :uint64, 14
  optional :pre_match_data, CPreMatchInfoData, 15
end

class CMsgGCCStrike15_v2_MatchmakingServerReservationResponse
  optional :reservationid, :uint64, 1
  optional :reservation, CMsgGCCStrike15_v2_MatchmakingGC2ServerReserve, 2
  optional :map, :string, 3
  optional :gc_reservation_sent, :uint64, 4
  optional :server_version, :uint32, 5
  optional :tv_info, ServerHltvInfo, 6
  repeated :reward_player_accounts, :uint32, 7
  repeated :idle_player_accounts, :uint32, 8
  optional :reward_item_attr_def_idx, :uint32, 9
  optional :reward_item_attr_value, :uint32, 10
  optional :reward_item_attr_reward_idx, :uint32, 11
  optional :reward_drop_list, :uint32, 12
  optional :tournament_tag, :string, 13
  optional :steamdatagram_port, :uint32, 14
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientReserve
  optional :serverid, :uint64, 1
  optional :server_address, :string, 7
  optional :legacy_serverip, :uint32, 2
  optional :legacy_serverport, :uint32, 3
  optional :reservationid, :uint64, 4
  optional :reservation, CMsgGCCStrike15_v2_MatchmakingGC2ServerReserve, 5
  optional :map, :string, 6
end

class CMsgGCCStrike15_v2_MatchmakingServerRoundStats

  class DropInfo
    optional :account_mvp, :uint32, 1
  end
  optional :reservationid, :uint64, 1
  optional :reservation, CMsgGCCStrike15_v2_MatchmakingGC2ServerReserve, 2
  optional :map, :string, 3
  optional :round, :int32, 4
  repeated :kills, :int32, 5
  repeated :assists, :int32, 6
  repeated :deaths, :int32, 7
  repeated :scores, :int32, 8
  repeated :pings, :int32, 9
  optional :round_result, :int32, 10
  optional :match_result, :int32, 11
  repeated :team_scores, :int32, 12
  optional :confirm, CMsgGCCStrike15_v2_MatchmakingGC2ServerConfirm, 13
  optional :reservation_stage, :int32, 14
  optional :match_duration, :int32, 15
  repeated :enemy_kills, :int32, 16
  repeated :enemy_headshots, :int32, 17
  repeated :enemy_3ks, :int32, 18
  repeated :enemy_4ks, :int32, 19
  repeated :enemy_5ks, :int32, 20
  repeated :mvps, :int32, 21
  optional :spectators_count, :uint32, 22
  optional :spectators_count_tv, :uint32, 23
  optional :spectators_count_lnk, :uint32, 24
  repeated :enemy_kills_agg, :int32, 25
  optional :drop_info, CMsgGCCStrike15_v2_MatchmakingServerRoundStats::DropInfo, 26
end

class CMsgGCCStrike15_v2_MatchmakingServerMatchEnd
  optional :stats, CMsgGCCStrike15_v2_MatchmakingServerRoundStats, 1
  optional :confirm, CMsgGCCStrike15_v2_MatchmakingGC2ServerConfirm, 3
  optional :rematch, :uint64, 4
  optional :replay_token, :uint32, 5
  optional :replay_cluster_id, :uint32, 6
  optional :aborted_match, :bool, 7
  optional :match_end_quest_data, CMsgGC_ServerQuestUpdateData, 8
  optional :server_version, :uint32, 9
end

class CMsgGCCStrike15_v2_MatchmakingClient2GCHello
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientHello
  optional :account_id, :uint32, 1
  optional :ongoingmatch, CMsgGCCStrike15_v2_MatchmakingGC2ClientReserve, 2
  optional :global_stats, GlobalStatistics, 3
  optional :penalty_seconds, :uint32, 4
  optional :penalty_reason, :uint32, 5
  optional :vac_banned, :int32, 6
  optional :ranking, PlayerRankingInfo, 7
  optional :commendation, PlayerCommendationInfo, 8
  optional :medals, PlayerMedalsInfo, 9
  optional :my_current_event, TournamentEvent, 10
  repeated :my_current_event_teams, TournamentTeam, 11
  optional :my_current_team, TournamentTeam, 12
  repeated :my_current_event_stages, TournamentEvent, 13
  optional :survey_vote, :uint32, 14
  optional :activity, AccountActivity, 15
  optional :player_level, :int32, 17
  optional :player_cur_xp, :int32, 18
  optional :player_xp_bonus_flags, :int32, 19
end

class CMsgGCCStrike15_v2_AccountPrivacySettings

  class Setting
    optional :setting_type, :uint32, 1
    optional :setting_value, :uint32, 2
  end
  repeated :settings, CMsgGCCStrike15_v2_AccountPrivacySettings::Setting, 1
end

class CMsgGCCStrike15_v2_MatchmakingGC2ClientAbandon
  optional :account_id, :uint32, 1
  optional :abandoned_match, CMsgGCCStrike15_v2_MatchmakingGC2ClientReserve, 2
  optional :penalty_seconds, :uint32, 3
  optional :penalty_reason, :uint32, 4
end

class CMsgGCCStrike15_v2_MatchmakingServer2GCKick
  optional :account_id, :uint32, 1
  optional :reservation, CMsgGCCStrike15_v2_MatchmakingGC2ServerReserve, 2
  optional :reason, :uint32, 3
end

class CMsgGCCStrike15_v2_MatchmakingGC2ServerRankUpdate
  repeated :rankings, PlayerRankingInfo, 1
  optional :match_id, :uint64, 2
end

class CMsgGCCStrike15_v2_MatchmakingOperator2GCBlogUpdate
  optional :main_post_url, :string, 1
end

class CMsgGCCStrike15_v2_ServerNotificationForUserPenalty
  optional :account_id, :uint32, 1
  optional :reason, :uint32, 2
  optional :seconds, :uint32, 3
end

class CMsgGCCStrike15_v2_ClientReportPlayer
  optional :account_id, :uint32, 1
  optional :rpt_aimbot, :uint32, 2
  optional :rpt_wallhack, :uint32, 3
  optional :rpt_speedhack, :uint32, 4
  optional :rpt_teamharm, :uint32, 5
  optional :rpt_textabuse, :uint32, 6
  optional :rpt_voiceabuse, :uint32, 7
  optional :match_id, :uint64, 8
end

class CMsgGCCStrike15_v2_ClientCommendPlayer
  optional :account_id, :uint32, 1
  optional :match_id, :uint64, 8
  optional :commendation, PlayerCommendationInfo, 9
  optional :tokens, :uint32, 10
end

class CMsgGCCStrike15_v2_ClientReportServer
  optional :rpt_poorperf, :uint32, 1
  optional :rpt_abusivemodels, :uint32, 2
  optional :rpt_badmotd, :uint32, 3
  optional :rpt_listingabuse, :uint32, 4
  optional :rpt_inventoryabuse, :uint32, 5
  optional :match_id, :uint64, 8
end

class CMsgGCCStrike15_v2_ClientReportResponse
  optional :confirmation_id, :uint64, 1
  optional :account_id, :uint32, 2
  optional :server_ip, :uint32, 3
  optional :response_type, :uint32, 4
  optional :response_result, :uint32, 5
  optional :tokens, :uint32, 6
end

class CMsgGCCStrike15_v2_ClientRequestWatchInfoFriends
  optional :request_id, :uint32, 1
  repeated :account_ids, :uint32, 2
  optional :serverid, :uint64, 3
  optional :matchid, :uint64, 4
end

class WatchableMatchInfo
  optional :server_ip, :uint32, 1
  optional :tv_port, :uint32, 2
  optional :tv_spectators, :uint32, 3
  optional :tv_time, :uint32, 4
  optional :tv_watch_password, :bytes, 5
  optional :cl_decryptdata_key, :uint64, 6
  optional :cl_decryptdata_key_pub, :uint64, 7
  optional :game_type, :uint32, 8
  optional :game_mapgroup, :string, 9
  optional :game_map, :string, 10
  optional :server_id, :uint64, 11
  optional :match_id, :uint64, 12
  optional :reservation_id, :uint64, 13
end

class CMsgGCCStrike15_v2_ClientRequestJoinFriendData
  optional :version, :uint32, 1
  optional :account_id, :uint32, 2
  optional :join_token, :uint32, 3
  optional :join_ipp, :uint32, 4
  optional :res, CMsgGCCStrike15_v2_MatchmakingGC2ClientReserve, 5
  optional :errormsg, :string, 6
end

class CMsgGCCStrike15_v2_ClientRequestJoinServerData
  optional :version, :uint32, 1
  optional :account_id, :uint32, 2
  optional :serverid, :uint64, 3
  optional :server_ip, :uint32, 4
  optional :server_port, :uint32, 5
  optional :res, CMsgGCCStrike15_v2_MatchmakingGC2ClientReserve, 6
end

class CMsgGCCstrike15_v2_ClientRequestNewMission
  optional :mission_id, :uint32, 2
  optional :campaign_id, :uint32, 3
end

class CMsgGCCstrike15_v2_GC2ServerNotifyXPRewarded
  repeated :xp_progress_data, XpProgressData, 1
  optional :account_id, :uint32, 2
  optional :current_xp, :uint32, 3
  optional :current_level, :uint32, 4
  optional :upgraded_defidx, :uint32, 5
end

class CMsgGCCStrike15_v2_WatchInfoUsers
  optional :request_id, :uint32, 1
  repeated :account_ids, :uint32, 2
  repeated :watchable_match_infos, WatchableMatchInfo, 3
  optional :extended_timeout, :uint32, 5
end

class CMsgGCCStrike15_v2_ClientRequestPlayersProfile
  optional :request_id__deprecated, :uint32, 1
  repeated :account_ids__deprecated, :uint32, 2
  optional :account_id, :uint32, 3
  optional :request_level, :uint32, 4
end

class CMsgGCCStrike15_v2_PlayersProfile
  optional :request_id, :uint32, 1
  repeated :account_profiles, CMsgGCCStrike15_v2_MatchmakingGC2ClientHello, 2
end

class CMsgGCCStrike15_v2_PlayerOverwatchCaseUpdate
  optional :caseid, :uint64, 1
  optional :suspectid, :uint32, 3
  optional :fractionid, :uint32, 4
  optional :rpt_aimbot, :uint32, 5
  optional :rpt_wallhack, :uint32, 6
  optional :rpt_speedhack, :uint32, 7
  optional :rpt_teamharm, :uint32, 8
  optional :reason, :uint32, 9
end

class CMsgGCCStrike15_v2_PlayerOverwatchCaseAssignment
  optional :caseid, :uint64, 1
  optional :caseurl, :string, 2
  optional :verdict, :uint32, 3
  optional :timestamp, :uint32, 4
  optional :throttleseconds, :uint32, 5
  optional :suspectid, :uint32, 6
  optional :fractionid, :uint32, 7
  optional :numrounds, :uint32, 8
  optional :fractionrounds, :uint32, 9
  optional :streakconvictions, :int32, 10
  optional :reason, :uint32, 11
end

class CMsgGCCStrike15_v2_PlayerOverwatchCaseStatus
  optional :caseid, :uint64, 1
  optional :statusid, :uint32, 2
end

class CClientHeaderOverwatchEvidence
  optional :accountid, :uint32, 1
  optional :caseid, :uint64, 2
end

class CMsgGCCStrike15_v2_GC2ClientTextMsg
  optional :id, :uint32, 1
  optional :type, :uint32, 2
  optional :payload, :bytes, 3
end

class CMsgGCCStrike15_v2_Client2GCTextMsg
  optional :id, :uint32, 1
  repeated :args, :bytes, 2
end

class CMsgGCCStrike15_v2_MatchEndRunRewardDrops
  optional :serverinfo, CMsgGCCStrike15_v2_MatchmakingServerReservationResponse, 3
  optional :match_end_quest_data, CMsgGC_ServerQuestUpdateData, 4
end

class CEconItemPreviewDataBlock

  class Sticker
    optional :slot, :uint32, 1
    optional :sticker_id, :uint32, 2
    optional :wear, :float, 3
    optional :scale, :float, 4
    optional :rotation, :float, 5
  end
  optional :accountid, :uint32, 1
  optional :itemid, :uint64, 2
  optional :defindex, :uint32, 3
  optional :paintindex, :uint32, 4
  optional :rarity, :uint32, 5
  optional :quality, :uint32, 6
  optional :paintwear, :uint32, 7
  optional :paintseed, :uint32, 8
  optional :killeaterscoretype, :uint32, 9
  optional :killeatervalue, :uint32, 10
  optional :customname, :string, 11
  repeated :stickers, CEconItemPreviewDataBlock::Sticker, 12
  optional :inventory, :uint32, 13
  optional :origin, :uint32, 14
  optional :questid, :uint32, 15
  optional :dropreason, :uint32, 16
end

class CMsgGCCStrike15_v2_MatchEndRewardDropsNotification
  optional :iteminfo, CEconItemPreviewDataBlock, 6
end

class CMsgItemAcknowledged
  optional :iteminfo, CEconItemPreviewDataBlock, 1
end

class CMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockRequest
  optional :param_s, :uint64, 1
  optional :param_a, :uint64, 2
  optional :param_d, :uint64, 3
  optional :param_m, :uint64, 4
end

class CMsgGCCStrike15_v2_Client2GCEconPreviewDataBlockResponse
  optional :iteminfo, CEconItemPreviewDataBlock, 1
end

class CMsgGCCStrike15_v2_TournamentMatchRewardDropsNotification
  optional :match_id, :uint64, 1
  optional :defindex, :uint32, 2
  repeated :accountids, :uint32, 3
end

class CMsgGCCStrike15_v2_MatchListRequestCurrentLiveGames
end

class CMsgGCCStrike15_v2_MatchListRequestLiveGameForUser
  optional :accountid, :uint32, 1
end

class CMsgGCCStrike15_v2_MatchListRequestRecentUserGames
  optional :accountid, :uint32, 1
end

class CMsgGCCStrike15_v2_MatchListRequestTournamentGames
  optional :eventid, :int32, 1
end

class CMsgGCCStrike15_v2_MatchListRequestFullGameInfo
  optional :matchid, :uint64, 1
  optional :outcomeid, :uint64, 2
  optional :token, :uint32, 3
end

class CDataGCCStrike15_v2_MatchInfo
  optional :matchid, :uint64, 1
  optional :matchtime, :uint32, 2
  optional :watchablematchinfo, WatchableMatchInfo, 3
  optional :roundstats_legacy, CMsgGCCStrike15_v2_MatchmakingServerRoundStats, 4
  repeated :roundstatsall, CMsgGCCStrike15_v2_MatchmakingServerRoundStats, 5
end

class CDataGCCStrike15_v2_TournamentGroupTeam
  optional :team_id, :int32, 1
  optional :score, :int32, 2
  optional :correctpick, :bool, 3
end

class CDataGCCStrike15_v2_TournamentGroup

  class Picks
    repeated :pickids, :int32, 1
  end
  optional :groupid, :uint32, 1
  optional :name, :string, 2
  optional :desc, :string, 3
  optional :picks__deprecated, :uint32, 4
  repeated :teams, CDataGCCStrike15_v2_TournamentGroupTeam, 5
  repeated :stage_ids, :int32, 6
  optional :picklockuntiltime, :uint32, 7
  optional :pickableteams, :uint32, 8
  optional :points_per_pick, :uint32, 9
  repeated :picks, CDataGCCStrike15_v2_TournamentGroup::Picks, 10
end

class CDataGCCStrike15_v2_TournamentSection
  optional :sectionid, :uint32, 1
  optional :name, :string, 2
  optional :desc, :string, 3
  repeated :groups, CDataGCCStrike15_v2_TournamentGroup, 4
end

class CDataGCCStrike15_v2_TournamentInfo
  repeated :sections, CDataGCCStrike15_v2_TournamentSection, 1
  optional :tournament_event, TournamentEvent, 2
  repeated :tournament_teams, TournamentTeam, 3
end

class CMsgGCCStrike15_v2_MatchList
  optional :msgrequestid, :uint32, 1
  optional :accountid, :uint32, 2
  optional :servertime, :uint32, 3
  repeated :matches, CDataGCCStrike15_v2_MatchInfo, 4
  repeated :streams, TournamentTeam, 5
  optional :tournamentinfo, CDataGCCStrike15_v2_TournamentInfo, 6
end

class CMsgGCCStrike15_v2_Predictions

  class GroupMatchTeamPick
    optional :sectionid, :int32, 1
    optional :groupid, :int32, 2
    optional :index, :int32, 3
    optional :teamid, :int32, 4
    optional :itemid, :uint64, 5
  end
  optional :event_id, :uint32, 1
  repeated :group_match_team_picks, CMsgGCCStrike15_v2_Predictions::GroupMatchTeamPick, 2
end

class CMsgGCCStrike15_v2_Fantasy

  class FantasySlot
    optional :type, :int32, 1
    optional :pick, :int32, 2
    optional :itemid, :uint64, 3
  end

  class FantasyTeam
    optional :sectionid, :int32, 1
    repeated :slots, CMsgGCCStrike15_v2_Fantasy::FantasySlot, 2
  end
  optional :event_id, :uint32, 1
  repeated :teams, CMsgGCCStrike15_v2_Fantasy::FantasyTeam, 2
end

class CAttribute_String
  optional :value, :string, 1
end

class CMsgGCToGCReloadVersions
end

class CMsgCStrike15Welcome
  optional :store_item_hash, :uint32, 5
  optional :timeplayedconsecutively, :uint32, 6
  optional :time_first_played, :uint32, 10
  optional :last_time_played, :uint32, 12
  optional :last_ip_address, :uint32, 13
  optional :gscookieid, :uint64, 18
  optional :uniqueid, :uint64, 19
end

class CMsgGCCStrike15_v2_ClientVarValueNotificationInfo
  optional :value_name, :string, 1
  optional :value_int, :int32, 2
  optional :server_addr, :uint32, 3
  optional :server_port, :uint32, 4
  repeated :choked_blocks, :string, 5
end

class CMsgGCCStrike15_v2_ServerVarValueNotificationInfo
  optional :accountid, :uint32, 1
  repeated :viewangles, :uint32, 2
  optional :type, :uint32, 3
end

class CMsgGCCStrike15_v2_GiftsLeaderboardRequest
end

class CMsgGCCStrike15_v2_GiftsLeaderboardResponse

  class GiftLeaderboardEntry
    optional :accountid, :uint32, 1
    optional :gifts, :uint32, 2
  end
  optional :servertime, :uint32, 1
  optional :time_period_seconds, :uint32, 2
  optional :total_gifts_given, :uint32, 3
  optional :total_givers, :uint32, 4
  repeated :entries, CMsgGCCStrike15_v2_GiftsLeaderboardResponse::GiftLeaderboardEntry, 5
end

class CMsgGCCStrike15_v2_ClientSubmitSurveyVote
  optional :survey_id, :uint32, 1
  optional :vote, :uint32, 2
end

class CMsgGCCStrike15_v2_Server2GCClientValidate
  optional :accountid, :uint32, 1
end

class CMsgGCCStrike15_v2_Server2GCPureServerValidationFailure
  optional :accountid, :uint32, 1
  optional :path, :string, 2
  optional :file, :string, 3
  optional :crc, :uint32, 4
  optional :hash, :int32, 5
  optional :len, :int32, 6
  optional :pack_number, :int32, 7
  optional :pack_file_id, :int32, 8
end

class CMsgGCCStrike15_v2_GC2ClientTournamentInfo
  optional :eventid, :uint32, 1
  optional :stageid, :uint32, 2
  optional :game_type, :uint32, 3
  repeated :teamids, :uint32, 4
end

class CSOEconCoupon
  optional :entryid, :uint32, 1
  optional :defidx, :uint32, 2
  optional :expiration_date, :fixed32, 3
end

class CSOQuestProgress
  optional :questid, :uint32, 1
  optional :points_remaining, :uint32, 2
  optional :bonus_points, :uint32, 3
end

class CSOPersonaDataPublic
  optional :player_level, :int32, 1
  optional :commendation, PlayerCommendationInfo, 2
end

class CMsgGC_GlobalGame_Subscribe
  optional :ticket, :uint64, 1
end

class CMsgGC_GlobalGame_Unsubscribe
  optional :timeleft, :int32, 1
end

class CMsgGC_GlobalGame_Play
  optional :ticket, :uint64, 1
  optional :gametimems, :uint32, 2
  optional :msperpoint, :uint32, 3
end

class CMsgGCCStrike15_v2_AcknowledgePenalty
  optional :acknowledged, :int32, 1
end

class CMsgGCCStrike15_v2_Client2GCRequestPrestigeCoin
end

class CMsgGCCStrike15_v2_Client2GCStreamUnlock
  optional :ticket, :uint64, 1
  optional :os, :int32, 2
end
