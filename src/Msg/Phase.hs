module Msg.Phase
    ( BaseMsgsPhase
    , SetupMsgsPhase
    , WindowMsgsPhase
    , MenuMsgsPhase
    , ConsoleMsgsPhase
    , DrawMsgsPhase
    , ThinkInfoMsgsPhase
    , ThinkPlayerMsgsPhase
    , ThinkEnemyMsgsPhase
    , ThinkLevelMsgsPhase
    , ThinkProjectileMsgsPhase
    , ThinkCollisionMsgsPhase
    , UpdatePlayerMsgsPhase
    , UpdateEnemyMsgsPhase
    , UpdateLevelMsgsPhase
    , UpdateProjectileMsgsPhase
    , UpdateParticleMsgsPhase
    , UpdateWorldUiMsgsPhase
    , UpdateStatsManagerMsgsPhase
    , UpdateAudioMsgsPhase
    , UpdateWorldMsgsPhase
    , AllowMsgRead
    , AllowMsgWrite
    ) where

import {-# SOURCE #-} Msg.Payload

data BaseMsgsPhase

data SetupMsgsPhase
data WindowMsgsPhase
data MenuMsgsPhase
data ConsoleMsgsPhase
data DrawMsgsPhase

data ThinkInfoMsgsPhase
data ThinkPlayerMsgsPhase
data ThinkEnemyMsgsPhase
data ThinkLevelMsgsPhase
data ThinkProjectileMsgsPhase
data ThinkCollisionMsgsPhase

data UpdatePlayerMsgsPhase
data UpdateEnemyMsgsPhase
data UpdateLevelMsgsPhase
data UpdateProjectileMsgsPhase
data UpdateParticleMsgsPhase
data UpdateWorldUiMsgsPhase
data UpdateWorldMsgsPhase
data UpdateStatsManagerMsgsPhase
data UpdateAudioMsgsPhase

class IsMsgPayload a => AllowMsgRead p a where
class IsMsgPayload a => AllowMsgWrite p a where

instance AllowMsgRead SetupMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite SetupMsgsPhase ConsoleMsgPayload where

instance AllowMsgWrite WindowMsgsPhase ConsoleMsgPayload where

instance AllowMsgRead MenuMsgsPhase MenuMsgPayload where
instance AllowMsgWrite MenuMsgsPhase AudioMsgPayload where
instance AllowMsgWrite MenuMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite MenuMsgsPhase MenuMsgPayload where

instance AllowMsgRead ConsoleMsgsPhase ConsoleMsgPayload where

instance AllowMsgWrite ThinkInfoMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite ThinkInfoMsgsPhase InfoMsgPayload where

instance AllowMsgRead ThinkPlayerMsgsPhase InfoMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase AudioMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase EnemyMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase NewThinkProjectileMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase PlayerMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase UiMsgPayload where
instance AllowMsgWrite ThinkPlayerMsgsPhase WorldMsgPayload where

instance AllowMsgRead ThinkEnemyMsgsPhase InfoMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase AudioMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase EnemyMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase HurtMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase InfoMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase NewThinkProjectileMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase RoomMsgPayload where
instance AllowMsgWrite ThinkEnemyMsgsPhase WorldMsgPayload where

instance AllowMsgRead ThinkLevelMsgsPhase InfoMsgPayload where
instance AllowMsgRead ThinkLevelMsgsPhase PlayerMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase AudioMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase CollisionMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase EnemyMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase NewThinkProjectileMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase PlayerMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase RoomMsgPayload where
instance AllowMsgWrite ThinkLevelMsgsPhase UiMsgPayload where

instance AllowMsgRead ThinkProjectileMsgsPhase InfoMsgPayload where
instance AllowMsgRead ThinkProjectileMsgsPhase NewThinkProjectileMsgPayload where
instance AllowMsgRead ThinkProjectileMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase AudioMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase CollisionMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase EnemyMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase InfoMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase NewUpdateProjectileMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase PlayerMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase RoomMsgPayload where
instance AllowMsgWrite ThinkProjectileMsgsPhase WorldMsgPayload where

instance AllowMsgWrite ThinkCollisionMsgsPhase AudioMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase CollisionMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase EnemyMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase HurtMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase NewUpdateProjectileMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase PlayerMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase RoomMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase UiMsgPayload where
instance AllowMsgWrite ThinkCollisionMsgsPhase WorldMsgPayload where

instance AllowMsgRead UpdatePlayerMsgsPhase CollisionMsgPayload where
instance AllowMsgRead UpdatePlayerMsgsPhase HurtMsgPayload where
instance AllowMsgRead UpdatePlayerMsgsPhase InfoMsgPayload where
instance AllowMsgRead UpdatePlayerMsgsPhase PlayerMsgPayload where
instance AllowMsgWrite UpdatePlayerMsgsPhase AudioMsgPayload where
instance AllowMsgWrite UpdatePlayerMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite UpdatePlayerMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite UpdatePlayerMsgsPhase UiMsgPayload where
instance AllowMsgWrite UpdatePlayerMsgsPhase WorldMsgPayload where

instance AllowMsgRead UpdateEnemyMsgsPhase AudioMsgPayload where
instance AllowMsgRead UpdateEnemyMsgsPhase CollisionMsgPayload where
instance AllowMsgRead UpdateEnemyMsgsPhase EnemyMsgPayload where
instance AllowMsgRead UpdateEnemyMsgsPhase HurtMsgPayload where
instance AllowMsgRead UpdateEnemyMsgsPhase InfoMsgPayload where
instance AllowMsgWrite UpdateEnemyMsgsPhase AudioMsgPayload where
instance AllowMsgWrite UpdateEnemyMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite UpdateEnemyMsgsPhase NewUpdateProjectileMsgPayload where
instance AllowMsgWrite UpdateEnemyMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite UpdateEnemyMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite UpdateEnemyMsgsPhase WorldMsgPayload where

instance AllowMsgRead UpdateLevelMsgsPhase AudioMsgPayload where
instance AllowMsgRead UpdateLevelMsgsPhase CollisionMsgPayload where
instance AllowMsgRead UpdateLevelMsgsPhase HurtMsgPayload where
instance AllowMsgRead UpdateLevelMsgsPhase InfoMsgPayload where
instance AllowMsgRead UpdateLevelMsgsPhase RoomMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase AudioMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase NewUpdateProjectileMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase RoomMsgPayload where
instance AllowMsgWrite UpdateLevelMsgsPhase WorldMsgPayload where

instance AllowMsgRead UpdateProjectileMsgsPhase CollisionMsgPayload where
instance AllowMsgRead UpdateProjectileMsgsPhase HurtMsgPayload where
instance AllowMsgRead UpdateProjectileMsgsPhase InfoMsgPayload where
instance AllowMsgRead UpdateProjectileMsgsPhase NewUpdateProjectileMsgPayload where
instance AllowMsgRead UpdateProjectileMsgsPhase ProjectileMsgPayload where
instance AllowMsgWrite UpdateProjectileMsgsPhase AudioMsgPayload where
instance AllowMsgWrite UpdateProjectileMsgsPhase ConsoleMsgPayload where
instance AllowMsgWrite UpdateProjectileMsgsPhase ParticleMsgPayload where

instance AllowMsgRead UpdateParticleMsgsPhase ParticleMsgPayload where
instance AllowMsgWrite UpdateParticleMsgsPhase ConsoleMsgPayload where

instance AllowMsgRead UpdateWorldUiMsgsPhase InfoMsgPayload where
instance AllowMsgRead UpdateWorldUiMsgsPhase PlayerMsgPayload where
instance AllowMsgRead UpdateWorldUiMsgsPhase UiMsgPayload where
instance AllowMsgWrite UpdateWorldUiMsgsPhase AudioMsgPayload where
instance AllowMsgWrite UpdateWorldUiMsgsPhase ConsoleMsgPayload where

instance AllowMsgRead UpdateWorldMsgsPhase WorldMsgPayload where
instance AllowMsgWrite UpdateWorldMsgsPhase ConsoleMsgPayload where

instance AllowMsgRead UpdateStatsManagerMsgsPhase PlayerMsgPayload where
instance AllowMsgRead UpdateStatsManagerMsgsPhase UiMsgPayload where
instance AllowMsgRead UpdateStatsManagerMsgsPhase WorldMsgPayload where
instance AllowMsgWrite UpdateStatsManagerMsgsPhase ConsoleMsgPayload where

instance AllowMsgRead UpdateAudioMsgsPhase AudioMsgPayload where
instance AllowMsgWrite UpdateAudioMsgsPhase ConsoleMsgPayload  where
