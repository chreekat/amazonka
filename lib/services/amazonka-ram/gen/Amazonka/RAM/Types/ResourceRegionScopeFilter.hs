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
-- Module      : Amazonka.RAM.Types.ResourceRegionScopeFilter
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RAM.Types.ResourceRegionScopeFilter
  ( ResourceRegionScopeFilter
      ( ..,
        ResourceRegionScopeFilter_ALL,
        ResourceRegionScopeFilter_GLOBAL,
        ResourceRegionScopeFilter_REGIONAL
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype ResourceRegionScopeFilter = ResourceRegionScopeFilter'
  { fromResourceRegionScopeFilter ::
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

pattern ResourceRegionScopeFilter_ALL :: ResourceRegionScopeFilter
pattern ResourceRegionScopeFilter_ALL = ResourceRegionScopeFilter' "ALL"

pattern ResourceRegionScopeFilter_GLOBAL :: ResourceRegionScopeFilter
pattern ResourceRegionScopeFilter_GLOBAL = ResourceRegionScopeFilter' "GLOBAL"

pattern ResourceRegionScopeFilter_REGIONAL :: ResourceRegionScopeFilter
pattern ResourceRegionScopeFilter_REGIONAL = ResourceRegionScopeFilter' "REGIONAL"

{-# COMPLETE
  ResourceRegionScopeFilter_ALL,
  ResourceRegionScopeFilter_GLOBAL,
  ResourceRegionScopeFilter_REGIONAL,
  ResourceRegionScopeFilter'
  #-}