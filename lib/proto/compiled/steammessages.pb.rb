## Generated from steammessages.proto
require "beefcake"


module GCProtoBufMsgSrc
  GCProtoBufMsgSrc_Unspecified = 0
  GCProtoBufMsgSrc_FromSystem = 1
  GCProtoBufMsgSrc_FromSteamID = 2
  GCProtoBufMsgSrc_FromGC = 3
  GCProtoBufMsgSrc_ReplySystem = 4
end

class CMsgProtoBufHeader
  include Beefcake::Message
end

class CMsgWebAPIKey
  include Beefcake::Message
end

class CMsgHttpRequest
  include Beefcake::Message

  class RequestHeader
    include Beefcake::Message
  end

  class QueryParam
    include Beefcake::Message
  end
end

class CMsgWebAPIRequest
  include Beefcake::Message
end

class CMsgHttpResponse
  include Beefcake::Message

  class ResponseHeader
    include Beefcake::Message
  end
end

class CMsgAMFindAccounts
  include Beefcake::Message
end

class CMsgAMFindAccountsResponse
  include Beefcake::Message
end

class CMsgNotifyWatchdog
  include Beefcake::Message
end

class CMsgAMGetLicenses
  include Beefcake::Message
end

class CMsgPackageLicense
  include Beefcake::Message
end

class CMsgAMGetLicensesResponse
  include Beefcake::Message
end

class CMsgAMGetUserGameStats
  include Beefcake::Message
end

class CMsgAMGetUserGameStatsResponse
  include Beefcake::Message

  class Stats
    include Beefcake::Message
  end

  class Achievement_Blocks
    include Beefcake::Message
  end
end

class CMsgGCGetCommandList
  include Beefcake::Message
end

class CMsgGCGetCommandListResponse
  include Beefcake::Message
end

class CGCMsgMemCachedGet
  include Beefcake::Message
end

class CGCMsgMemCachedGetResponse
  include Beefcake::Message

  class ValueTag
    include Beefcake::Message
  end
end

class CGCMsgMemCachedSet
  include Beefcake::Message

  class KeyPair
    include Beefcake::Message
  end
end

class CGCMsgMemCachedDelete
  include Beefcake::Message
end

class CGCMsgMemCachedStats
  include Beefcake::Message
end

class CGCMsgMemCachedStatsResponse
  include Beefcake::Message
end

class CGCMsgSQLStats
  include Beefcake::Message
end

class CGCMsgSQLStatsResponse
  include Beefcake::Message
end

class CMsgAMAddFreeLicense
  include Beefcake::Message
end

class CMsgAMAddFreeLicenseResponse
  include Beefcake::Message
end

class CGCMsgGetIPLocation
  include Beefcake::Message
end

class CIPLocationInfo
  include Beefcake::Message
end

class CGCMsgGetIPLocationResponse
  include Beefcake::Message
end

class CGCMsgSystemStatsSchema
  include Beefcake::Message
end

class CGCMsgGetSystemStats
  include Beefcake::Message
end

class CGCMsgGetSystemStatsResponse
  include Beefcake::Message
end

class CMsgAMSendEmail
  include Beefcake::Message

  class ReplacementToken
    include Beefcake::Message
  end

  class PersonaNameReplacementToken
    include Beefcake::Message
  end
end

class CMsgAMSendEmailResponse
  include Beefcake::Message
end

class CMsgGCGetEmailTemplate
  include Beefcake::Message
end

class CMsgGCGetEmailTemplateResponse
  include Beefcake::Message
end

class CMsgAMGrantGuestPasses2
  include Beefcake::Message
end

class CMsgAMGrantGuestPasses2Response
  include Beefcake::Message
end

class CGCSystemMsg_GetAccountDetails
  include Beefcake::Message
end

class CGCSystemMsg_GetAccountDetails_Response
  include Beefcake::Message
end

class CMsgGCGetPersonaNames
  include Beefcake::Message
end

class CMsgGCGetPersonaNames_Response
  include Beefcake::Message

  class PersonaName
    include Beefcake::Message
  end
end

class CMsgGCCheckFriendship
  include Beefcake::Message
end

class CMsgGCCheckFriendship_Response
  include Beefcake::Message
end

class CMsgGCMsgMasterSetDirectory
  include Beefcake::Message

  class SubGC
    include Beefcake::Message
  end
end

class CMsgGCMsgMasterSetDirectory_Response
  include Beefcake::Message
end

class CMsgGCMsgWebAPIJobRequestForwardResponse
  include Beefcake::Message
end

class CGCSystemMsg_GetPurchaseTrust_Request
  include Beefcake::Message
end

class CGCSystemMsg_GetPurchaseTrust_Response
  include Beefcake::Message
end

class CMsgGCHAccountVacStatusChange
  include Beefcake::Message
end

class CMsgGCGetPartnerAccountLink
  include Beefcake::Message
end

class CMsgGCGetPartnerAccountLink_Response
  include Beefcake::Message
end

class CMsgGCRoutingInfo
  include Beefcake::Message

  module RoutingMethod
    RANDOM = 0
    DISCARD = 1
    CLIENT_STEAMID = 2
    PROTOBUF_FIELD_UINT64 = 3
    WEBAPI_PARAM_UINT64 = 4
  end
end

class CMsgGCMsgMasterSetWebAPIRouting
  include Beefcake::Message

  class Entry
    include Beefcake::Message
  end
end

class CMsgGCMsgMasterSetClientMsgRouting
  include Beefcake::Message

  class Entry
    include Beefcake::Message
  end
end

class CMsgGCMsgMasterSetWebAPIRouting_Response
  include Beefcake::Message
end

class CMsgGCMsgMasterSetClientMsgRouting_Response
  include Beefcake::Message
end

class CMsgGCMsgSetOptions
  include Beefcake::Message

  module Option
    NOTIFY_USER_SESSIONS = 0
    NOTIFY_SERVER_SESSIONS = 1
    NOTIFY_ACHIEVEMENTS = 2
    NOTIFY_VAC_ACTION = 3
  end

  class MessageRange
    include Beefcake::Message
  end
end

class CMsgGCHUpdateSession
  include Beefcake::Message

  class ExtraField
    include Beefcake::Message
  end
end

class CMsgNotificationOfSuspiciousActivity
  include Beefcake::Message

  class MultipleGameInstances
    include Beefcake::Message
  end
end

class CMsgProtoBufHeader
  optional :client_steam_id, :fixed64, 1
  optional :client_session_id, :int32, 2
  optional :source_app_id, :uint32, 3
  optional :job_id_source, :fixed64, 10, :default => 18446744073709551615
  optional :job_id_target, :fixed64, 11, :default => 18446744073709551615
  optional :target_job_name, :string, 12
  optional :eresult, :int32, 13, :default => 2
  optional :error_message, :string, 14
  optional :gc_msg_src, GCProtoBufMsgSrc, 200, :default => GCProtoBufMsgSrc::GCProtoBufMsgSrc_Unspecified
  optional :gc_dir_index_source, :uint32, 201
end

class CMsgWebAPIKey
  optional :status, :uint32, 1, :default => 255
  optional :account_id, :uint32, 2, :default => 0
  optional :publisher_group_id, :uint32, 3, :default => 0
  optional :key_id, :uint32, 4
  optional :domain, :string, 5
end

class CMsgHttpRequest

  class RequestHeader
    optional :name, :string, 1
    optional :value, :string, 2
  end

  class QueryParam
    optional :name, :string, 1
    optional :value, :bytes, 2
  end
  optional :request_method, :uint32, 1
  optional :hostname, :string, 2
  optional :url, :string, 3
  repeated :headers, CMsgHttpRequest::RequestHeader, 4
  repeated :get_params, CMsgHttpRequest::QueryParam, 5
  repeated :post_params, CMsgHttpRequest::QueryParam, 6
  optional :body, :bytes, 7
  optional :absolute_timeout, :uint32, 8
end

class CMsgWebAPIRequest
  optional :UNUSED_job_name, :string, 1
  optional :interface_name, :string, 2
  optional :method_name, :string, 3
  optional :version, :uint32, 4
  optional :api_key, CMsgWebAPIKey, 5
  optional :request, CMsgHttpRequest, 6
  optional :routing_app_id, :uint32, 7
end

class CMsgHttpResponse

  class ResponseHeader
    optional :name, :string, 1
    optional :value, :string, 2
  end
  optional :status_code, :uint32, 1
  repeated :headers, CMsgHttpResponse::ResponseHeader, 2
  optional :body, :bytes, 3
end

class CMsgAMFindAccounts
  optional :search_type, :uint32, 1
  optional :search_string, :string, 2
end

class CMsgAMFindAccountsResponse
  repeated :steam_id, :fixed64, 1
end

class CMsgNotifyWatchdog
  optional :source, :uint32, 1
  optional :alert_type, :uint32, 2
  optional :alert_destination, :uint32, 3
  optional :critical, :bool, 4
  optional :time, :uint32, 5
  optional :appid, :uint32, 6
  optional :text, :string, 7
end

class CMsgAMGetLicenses
  optional :steamid, :fixed64, 1
end

class CMsgPackageLicense
  optional :package_id, :uint32, 1
  optional :time_created, :uint32, 2
  optional :owner_id, :uint32, 3
end

class CMsgAMGetLicensesResponse
  repeated :license, CMsgPackageLicense, 1
  optional :result, :uint32, 2
end

class CMsgAMGetUserGameStats
  optional :steam_id, :fixed64, 1
  optional :game_id, :fixed64, 2
  repeated :stats, :uint32, 3
end

class CMsgAMGetUserGameStatsResponse

  class Stats
    optional :stat_id, :uint32, 1
    optional :stat_value, :uint32, 2
  end

  class Achievement_Blocks
    optional :achievement_id, :uint32, 1
    optional :achievement_bit_id, :uint32, 2
    optional :unlock_time, :fixed32, 3
  end
  optional :steam_id, :fixed64, 1
  optional :game_id, :fixed64, 2
  optional :eresult, :int32, 3, :default => 2
  repeated :stats, CMsgAMGetUserGameStatsResponse::Stats, 4
  repeated :achievement_blocks, CMsgAMGetUserGameStatsResponse::Achievement_Blocks, 5
end

class CMsgGCGetCommandList
  optional :app_id, :uint32, 1
  optional :command_prefix, :string, 2
end

class CMsgGCGetCommandListResponse
  repeated :command_name, :string, 1
end

class CGCMsgMemCachedGet
  repeated :keys, :string, 1
end

class CGCMsgMemCachedGetResponse

  class ValueTag
    optional :found, :bool, 1
    optional :value, :bytes, 2
  end
  repeated :values, CGCMsgMemCachedGetResponse::ValueTag, 1
end

class CGCMsgMemCachedSet

  class KeyPair
    optional :name, :string, 1
    optional :value, :bytes, 2
  end
  repeated :keys, CGCMsgMemCachedSet::KeyPair, 1
end

class CGCMsgMemCachedDelete
  repeated :keys, :string, 1
end

class CGCMsgMemCachedStats
end

class CGCMsgMemCachedStatsResponse
  optional :curr_connections, :uint64, 1
  optional :cmd_get, :uint64, 2
  optional :cmd_set, :uint64, 3
  optional :cmd_flush, :uint64, 4
  optional :get_hits, :uint64, 5
  optional :get_misses, :uint64, 6
  optional :delete_hits, :uint64, 7
  optional :delete_misses, :uint64, 8
  optional :bytes_read, :uint64, 9
  optional :bytes_written, :uint64, 10
  optional :limit_maxbytes, :uint64, 11
  optional :curr_items, :uint64, 12
  optional :evictions, :uint64, 13
  optional :bytes, :uint64, 14
end

class CGCMsgSQLStats
  optional :schema_catalog, :uint32, 1
end

class CGCMsgSQLStatsResponse
  optional :threads, :uint32, 1
  optional :threads_connected, :uint32, 2
  optional :threads_active, :uint32, 3
  optional :operations_submitted, :uint32, 4
  optional :prepared_statements_executed, :uint32, 5
  optional :non_prepared_statements_executed, :uint32, 6
  optional :deadlock_retries, :uint32, 7
  optional :operations_timed_out_in_queue, :uint32, 8
  optional :errors, :uint32, 9
end

class CMsgAMAddFreeLicense
  optional :steamid, :fixed64, 1
  optional :ip_public, :uint32, 2
  optional :packageid, :uint32, 3
  optional :store_country_code, :string, 4
end

class CMsgAMAddFreeLicenseResponse
  optional :eresult, :int32, 1, :default => 2
  optional :purchase_result_detail, :int32, 2
  optional :transid, :fixed64, 3
end

class CGCMsgGetIPLocation
  repeated :ips, :fixed32, 1
end

class CIPLocationInfo
  optional :ip, :uint32, 1
  optional :latitude, :float, 2
  optional :longitude, :float, 3
  optional :country, :string, 4
  optional :state, :string, 5
  optional :city, :string, 6
end

class CGCMsgGetIPLocationResponse
  repeated :infos, CIPLocationInfo, 1
end

class CGCMsgSystemStatsSchema
  optional :gc_app_id, :uint32, 1
  optional :schema_kv, :bytes, 2
end

class CGCMsgGetSystemStats
end

class CGCMsgGetSystemStatsResponse
  optional :gc_app_id, :uint32, 1
  optional :stats_kv, :bytes, 2
  optional :active_jobs, :uint32, 3
  optional :yielding_jobs, :uint32, 4
  optional :user_sessions, :uint32, 5
  optional :game_server_sessions, :uint32, 6
  optional :socaches, :uint32, 7
  optional :socaches_to_unload, :uint32, 8
  optional :socaches_loading, :uint32, 9
  optional :writeback_queue, :uint32, 10
  optional :steamid_locks, :uint32, 11
  optional :logon_queue, :uint32, 12
  optional :logon_jobs, :uint32, 13
end

class CMsgAMSendEmail

  class ReplacementToken
    optional :token_name, :string, 1
    optional :token_value, :string, 2
  end

  class PersonaNameReplacementToken
    optional :steamid, :fixed64, 1
    optional :token_name, :string, 2
  end
  optional :steamid, :fixed64, 1
  optional :email_msg_type, :uint32, 2
  optional :email_format, :uint32, 3
  repeated :persona_name_tokens, CMsgAMSendEmail::PersonaNameReplacementToken, 5
  optional :source_gc, :uint32, 6
  repeated :tokens, CMsgAMSendEmail::ReplacementToken, 7
end

class CMsgAMSendEmailResponse
  optional :eresult, :uint32, 1, :default => 2
end

class CMsgGCGetEmailTemplate
  optional :app_id, :uint32, 1
  optional :email_msg_type, :uint32, 2
  optional :email_lang, :int32, 3
  optional :email_format, :int32, 4
end

class CMsgGCGetEmailTemplateResponse
  optional :eresult, :uint32, 1, :default => 2
  optional :template_exists, :bool, 2
  optional :template, :string, 3
end

class CMsgAMGrantGuestPasses2
  optional :steam_id, :fixed64, 1
  optional :package_id, :uint32, 2
  optional :passes_to_grant, :int32, 3
  optional :days_to_expiration, :int32, 4
  optional :action, :int32, 5
end

class CMsgAMGrantGuestPasses2Response
  optional :eresult, :int32, 1, :default => 2
  optional :passes_granted, :int32, 2, :default => 0
end

class CGCSystemMsg_GetAccountDetails
  optional :steamid, :fixed64, 1
  optional :appid, :uint32, 2
end

class CGCSystemMsg_GetAccountDetails_Response
  optional :eresult_deprecated, :uint32, 1, :default => 2
  optional :account_name, :string, 2
  optional :persona_name, :string, 3
  optional :is_profile_public, :bool, 4
  optional :is_inventory_public, :bool, 5
  optional :is_vac_banned, :bool, 7
  optional :is_cyber_cafe, :bool, 8
  optional :is_school_account, :bool, 9
  optional :is_limited, :bool, 10
  optional :is_subscribed, :bool, 11
  optional :package, :uint32, 12
  optional :is_free_trial_account, :bool, 13
  optional :free_trial_expiration, :uint32, 14
  optional :is_low_violence, :bool, 15
  optional :is_account_locked_down, :bool, 16
  optional :is_community_banned, :bool, 17
  optional :is_trade_banned, :bool, 18
  optional :trade_ban_expiration, :uint32, 19
  optional :accountid, :uint32, 20
  optional :suspension_end_time, :uint32, 21
  optional :currency, :string, 22
  optional :steam_level, :uint32, 23
  optional :friend_count, :uint32, 24
  optional :account_creation_time, :uint32, 25
  optional :is_steamguard_enabled, :bool, 27
  optional :is_phone_verified, :bool, 28
  optional :is_two_factor_auth_enabled, :bool, 29
  optional :two_factor_enabled_time, :uint32, 30
  optional :phone_verification_time, :uint32, 31
  optional :phone_id, :uint64, 33
  optional :is_phone_identifying, :bool, 34
end

class CMsgGCGetPersonaNames
  repeated :steamids, :fixed64, 1
end

class CMsgGCGetPersonaNames_Response

  class PersonaName
    optional :steamid, :fixed64, 1
    optional :persona_name, :string, 2
  end
  repeated :succeeded_lookups, CMsgGCGetPersonaNames_Response::PersonaName, 1
  repeated :failed_lookup_steamids, :fixed64, 2
end

class CMsgGCCheckFriendship
  optional :steamid_left, :fixed64, 1
  optional :steamid_right, :fixed64, 2
end

class CMsgGCCheckFriendship_Response
  optional :success, :bool, 1
  optional :found_friendship, :bool, 2
end

class CMsgGCMsgMasterSetDirectory

  class SubGC
    optional :dir_index, :uint32, 1
    optional :name, :string, 2
    optional :box, :string, 3
    optional :command_line, :string, 4
    optional :gc_binary, :string, 5
  end
  optional :master_dir_index, :uint32, 1
  repeated :dir, CMsgGCMsgMasterSetDirectory::SubGC, 2
end

class CMsgGCMsgMasterSetDirectory_Response
  optional :eresult, :int32, 1, :default => 2
end

class CMsgGCMsgWebAPIJobRequestForwardResponse
  optional :dir_index, :uint32, 1
end

class CGCSystemMsg_GetPurchaseTrust_Request
  optional :steamid, :fixed64, 1
end

class CGCSystemMsg_GetPurchaseTrust_Response
  optional :has_prior_purchase_history, :bool, 1
  optional :has_no_recent_password_resets, :bool, 2
  optional :is_wallet_cash_trusted, :bool, 3
  optional :time_all_trusted, :uint32, 4
end

class CMsgGCHAccountVacStatusChange
  optional :steam_id, :fixed64, 1
  optional :app_id, :uint32, 2
  optional :rtime_vacban_starts, :uint32, 3
  optional :is_banned_now, :bool, 4
  optional :is_banned_future, :bool, 5
end

class CMsgGCGetPartnerAccountLink
  optional :steamid, :fixed64, 1
end

class CMsgGCGetPartnerAccountLink_Response
  optional :pwid, :uint32, 1
  optional :nexonid, :uint32, 2
end

class CMsgGCRoutingInfo
  repeated :dir_index, :uint32, 1
  optional :method, CMsgGCRoutingInfo::RoutingMethod, 2, :default => CMsgGCRoutingInfo::RoutingMethod::RANDOM
  optional :fallback, CMsgGCRoutingInfo::RoutingMethod, 3, :default => CMsgGCRoutingInfo::RoutingMethod::DISCARD
  optional :protobuf_field, :uint32, 4
  optional :webapi_param, :string, 5
end

class CMsgGCMsgMasterSetWebAPIRouting

  class Entry
    optional :interface_name, :string, 1
    optional :method_name, :string, 2
    optional :routing, CMsgGCRoutingInfo, 3
  end
  repeated :entries, CMsgGCMsgMasterSetWebAPIRouting::Entry, 1
end

class CMsgGCMsgMasterSetClientMsgRouting

  class Entry
    optional :msg_type, :uint32, 1
    optional :routing, CMsgGCRoutingInfo, 2
  end
  repeated :entries, CMsgGCMsgMasterSetClientMsgRouting::Entry, 1
end

class CMsgGCMsgMasterSetWebAPIRouting_Response
  optional :eresult, :int32, 1, :default => 2
end

class CMsgGCMsgMasterSetClientMsgRouting_Response
  optional :eresult, :int32, 1, :default => 2
end

class CMsgGCMsgSetOptions

  class MessageRange
    required :low, :uint32, 1
    required :high, :uint32, 2
  end
  repeated :options, CMsgGCMsgSetOptions::Option, 1
  repeated :client_msg_ranges, CMsgGCMsgSetOptions::MessageRange, 2
end

class CMsgGCHUpdateSession

  class ExtraField
    optional :name, :string, 1
    optional :value, :string, 2
  end
  optional :steam_id, :fixed64, 1
  optional :app_id, :uint32, 2
  optional :online, :bool, 3
  optional :server_steam_id, :fixed64, 4
  optional :server_addr, :uint32, 5
  optional :server_port, :uint32, 6
  optional :os_type, :uint32, 7
  optional :client_addr, :uint32, 8
  repeated :extra_fields, CMsgGCHUpdateSession::ExtraField, 9
end

class CMsgNotificationOfSuspiciousActivity

  class MultipleGameInstances
    optional :app_instance_count, :uint32, 1
    repeated :other_steamids, :fixed64, 2
  end
  optional :steamid, :fixed64, 1
  optional :appid, :uint32, 2
  optional :multiple_instances, CMsgNotificationOfSuspiciousActivity::MultipleGameInstances, 3
end
