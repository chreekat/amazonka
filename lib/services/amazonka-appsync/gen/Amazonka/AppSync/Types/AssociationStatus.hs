{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.AppSync.Types.AssociationStatus
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.AppSync.Types.AssociationStatus
  ( AssociationStatus
      ( ..,
        AssociationStatus_FAILED,
        AssociationStatus_PROCESSING,
        AssociationStatus_SUCCESS
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype AssociationStatus = AssociationStatus'
  { fromAssociationStatus ::
      Data.Text
  }
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern AssociationStatus_FAILED :: AssociationStatus
pattern AssociationStatus_FAILED = AssociationStatus' "FAILED"

pattern AssociationStatus_PROCESSING :: AssociationStatus
pattern AssociationStatus_PROCESSING = AssociationStatus' "PROCESSING"

pattern AssociationStatus_SUCCESS :: AssociationStatus
pattern AssociationStatus_SUCCESS = AssociationStatus' "SUCCESS"

{-# COMPLETE
  AssociationStatus_FAILED,
  AssociationStatus_PROCESSING,
  AssociationStatus_SUCCESS,
  AssociationStatus'
  #-}