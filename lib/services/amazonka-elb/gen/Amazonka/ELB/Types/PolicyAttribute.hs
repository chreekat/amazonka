{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.ELB.Types.PolicyAttribute
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.ELB.Types.PolicyAttribute where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.ELB.Internal
import qualified Amazonka.Prelude as Prelude

-- | Information about a policy attribute.
--
-- /See:/ 'newPolicyAttribute' smart constructor.
data PolicyAttribute = PolicyAttribute'
  { -- | The value of the attribute.
    attributeValue :: Prelude.Maybe Prelude.Text,
    -- | The name of the attribute.
    attributeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'PolicyAttribute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeValue', 'policyAttribute_attributeValue' - The value of the attribute.
--
-- 'attributeName', 'policyAttribute_attributeName' - The name of the attribute.
newPolicyAttribute ::
  PolicyAttribute
newPolicyAttribute =
  PolicyAttribute'
    { attributeValue = Prelude.Nothing,
      attributeName = Prelude.Nothing
    }

-- | The value of the attribute.
policyAttribute_attributeValue :: Lens.Lens' PolicyAttribute (Prelude.Maybe Prelude.Text)
policyAttribute_attributeValue = Lens.lens (\PolicyAttribute' {attributeValue} -> attributeValue) (\s@PolicyAttribute' {} a -> s {attributeValue = a} :: PolicyAttribute)

-- | The name of the attribute.
policyAttribute_attributeName :: Lens.Lens' PolicyAttribute (Prelude.Maybe Prelude.Text)
policyAttribute_attributeName = Lens.lens (\PolicyAttribute' {attributeName} -> attributeName) (\s@PolicyAttribute' {} a -> s {attributeName = a} :: PolicyAttribute)

instance Prelude.Hashable PolicyAttribute where
  hashWithSalt _salt PolicyAttribute' {..} =
    _salt `Prelude.hashWithSalt` attributeValue
      `Prelude.hashWithSalt` attributeName

instance Prelude.NFData PolicyAttribute where
  rnf PolicyAttribute' {..} =
    Prelude.rnf attributeValue
      `Prelude.seq` Prelude.rnf attributeName

instance Core.ToQuery PolicyAttribute where
  toQuery PolicyAttribute' {..} =
    Prelude.mconcat
      [ "AttributeValue" Core.=: attributeValue,
        "AttributeName" Core.=: attributeName
      ]
