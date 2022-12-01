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
-- Module      : Amazonka.CostExplorer.Types.SavingsPlansPurchaseRecommendationDetail
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.CostExplorer.Types.SavingsPlansPurchaseRecommendationDetail where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.CostExplorer.Types.SavingsPlansDetails
import qualified Amazonka.Prelude as Prelude

-- | Details for your recommended Savings Plans.
--
-- /See:/ 'newSavingsPlansPurchaseRecommendationDetail' smart constructor.
data SavingsPlansPurchaseRecommendationDetail = SavingsPlansPurchaseRecommendationDetail'
  { -- | The recommended hourly commitment level for the Savings Plans type and
    -- the configuration that\'s based on the usage during the lookback period.
    hourlyCommitmentToPurchase :: Prelude.Maybe Prelude.Text,
    -- | The estimated savings percentage relative to the total cost of
    -- applicable On-Demand usage over the lookback period.
    estimatedSavingsPercentage :: Prelude.Maybe Prelude.Text,
    -- | The estimated monthly savings amount based on the recommended Savings
    -- Plans.
    estimatedMonthlySavingsAmount :: Prelude.Maybe Prelude.Text,
    -- | The estimated On-Demand costs you expect with no additional commitment,
    -- based on your usage of the selected time period and the Savings Plans
    -- you own.
    estimatedOnDemandCostWithCurrentCommitment :: Prelude.Maybe Prelude.Text,
    -- | The upfront cost of the recommended Savings Plans, based on the selected
    -- payment option.
    upfrontCost :: Prelude.Maybe Prelude.Text,
    -- | The estimated utilization of the recommended Savings Plans.
    estimatedAverageUtilization :: Prelude.Maybe Prelude.Text,
    -- | The lowest value of hourly On-Demand spend over the lookback period of
    -- the applicable usage type.
    currentMinimumHourlyOnDemandSpend :: Prelude.Maybe Prelude.Text,
    -- | The currency code that Amazon Web Services used to generate the
    -- recommendations and present potential savings.
    currencyCode :: Prelude.Maybe Prelude.Text,
    -- | The @AccountID@ the recommendation is generated for.
    accountId :: Prelude.Maybe Prelude.Text,
    -- | The remaining On-Demand cost estimated to not be covered by the
    -- recommended Savings Plans, over the length of the lookback period.
    estimatedOnDemandCost :: Prelude.Maybe Prelude.Text,
    -- | The average value of hourly On-Demand spend over the lookback period of
    -- the applicable usage type.
    currentAverageHourlyOnDemandSpend :: Prelude.Maybe Prelude.Text,
    -- | The estimated savings amount that\'s based on the recommended Savings
    -- Plans over the length of the lookback period.
    estimatedSavingsAmount :: Prelude.Maybe Prelude.Text,
    -- | The cost of the recommended Savings Plans over the length of the
    -- lookback period.
    estimatedSPCost :: Prelude.Maybe Prelude.Text,
    -- | Details for your recommended Savings Plans.
    savingsPlansDetails :: Prelude.Maybe SavingsPlansDetails,
    -- | The highest value of hourly On-Demand spend over the lookback period of
    -- the applicable usage type.
    currentMaximumHourlyOnDemandSpend :: Prelude.Maybe Prelude.Text,
    -- | The estimated return on investment that\'s based on the recommended
    -- Savings Plans that you purchased. This is calculated as
    -- @estimatedSavingsAmount@\/ @estimatedSPCost@*100.
    estimatedROI :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'SavingsPlansPurchaseRecommendationDetail' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hourlyCommitmentToPurchase', 'savingsPlansPurchaseRecommendationDetail_hourlyCommitmentToPurchase' - The recommended hourly commitment level for the Savings Plans type and
-- the configuration that\'s based on the usage during the lookback period.
--
-- 'estimatedSavingsPercentage', 'savingsPlansPurchaseRecommendationDetail_estimatedSavingsPercentage' - The estimated savings percentage relative to the total cost of
-- applicable On-Demand usage over the lookback period.
--
-- 'estimatedMonthlySavingsAmount', 'savingsPlansPurchaseRecommendationDetail_estimatedMonthlySavingsAmount' - The estimated monthly savings amount based on the recommended Savings
-- Plans.
--
-- 'estimatedOnDemandCostWithCurrentCommitment', 'savingsPlansPurchaseRecommendationDetail_estimatedOnDemandCostWithCurrentCommitment' - The estimated On-Demand costs you expect with no additional commitment,
-- based on your usage of the selected time period and the Savings Plans
-- you own.
--
-- 'upfrontCost', 'savingsPlansPurchaseRecommendationDetail_upfrontCost' - The upfront cost of the recommended Savings Plans, based on the selected
-- payment option.
--
-- 'estimatedAverageUtilization', 'savingsPlansPurchaseRecommendationDetail_estimatedAverageUtilization' - The estimated utilization of the recommended Savings Plans.
--
-- 'currentMinimumHourlyOnDemandSpend', 'savingsPlansPurchaseRecommendationDetail_currentMinimumHourlyOnDemandSpend' - The lowest value of hourly On-Demand spend over the lookback period of
-- the applicable usage type.
--
-- 'currencyCode', 'savingsPlansPurchaseRecommendationDetail_currencyCode' - The currency code that Amazon Web Services used to generate the
-- recommendations and present potential savings.
--
-- 'accountId', 'savingsPlansPurchaseRecommendationDetail_accountId' - The @AccountID@ the recommendation is generated for.
--
-- 'estimatedOnDemandCost', 'savingsPlansPurchaseRecommendationDetail_estimatedOnDemandCost' - The remaining On-Demand cost estimated to not be covered by the
-- recommended Savings Plans, over the length of the lookback period.
--
-- 'currentAverageHourlyOnDemandSpend', 'savingsPlansPurchaseRecommendationDetail_currentAverageHourlyOnDemandSpend' - The average value of hourly On-Demand spend over the lookback period of
-- the applicable usage type.
--
-- 'estimatedSavingsAmount', 'savingsPlansPurchaseRecommendationDetail_estimatedSavingsAmount' - The estimated savings amount that\'s based on the recommended Savings
-- Plans over the length of the lookback period.
--
-- 'estimatedSPCost', 'savingsPlansPurchaseRecommendationDetail_estimatedSPCost' - The cost of the recommended Savings Plans over the length of the
-- lookback period.
--
-- 'savingsPlansDetails', 'savingsPlansPurchaseRecommendationDetail_savingsPlansDetails' - Details for your recommended Savings Plans.
--
-- 'currentMaximumHourlyOnDemandSpend', 'savingsPlansPurchaseRecommendationDetail_currentMaximumHourlyOnDemandSpend' - The highest value of hourly On-Demand spend over the lookback period of
-- the applicable usage type.
--
-- 'estimatedROI', 'savingsPlansPurchaseRecommendationDetail_estimatedROI' - The estimated return on investment that\'s based on the recommended
-- Savings Plans that you purchased. This is calculated as
-- @estimatedSavingsAmount@\/ @estimatedSPCost@*100.
newSavingsPlansPurchaseRecommendationDetail ::
  SavingsPlansPurchaseRecommendationDetail
newSavingsPlansPurchaseRecommendationDetail =
  SavingsPlansPurchaseRecommendationDetail'
    { hourlyCommitmentToPurchase =
        Prelude.Nothing,
      estimatedSavingsPercentage =
        Prelude.Nothing,
      estimatedMonthlySavingsAmount =
        Prelude.Nothing,
      estimatedOnDemandCostWithCurrentCommitment =
        Prelude.Nothing,
      upfrontCost = Prelude.Nothing,
      estimatedAverageUtilization =
        Prelude.Nothing,
      currentMinimumHourlyOnDemandSpend =
        Prelude.Nothing,
      currencyCode = Prelude.Nothing,
      accountId = Prelude.Nothing,
      estimatedOnDemandCost =
        Prelude.Nothing,
      currentAverageHourlyOnDemandSpend =
        Prelude.Nothing,
      estimatedSavingsAmount =
        Prelude.Nothing,
      estimatedSPCost = Prelude.Nothing,
      savingsPlansDetails =
        Prelude.Nothing,
      currentMaximumHourlyOnDemandSpend =
        Prelude.Nothing,
      estimatedROI = Prelude.Nothing
    }

-- | The recommended hourly commitment level for the Savings Plans type and
-- the configuration that\'s based on the usage during the lookback period.
savingsPlansPurchaseRecommendationDetail_hourlyCommitmentToPurchase :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_hourlyCommitmentToPurchase = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {hourlyCommitmentToPurchase} -> hourlyCommitmentToPurchase) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {hourlyCommitmentToPurchase = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The estimated savings percentage relative to the total cost of
-- applicable On-Demand usage over the lookback period.
savingsPlansPurchaseRecommendationDetail_estimatedSavingsPercentage :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedSavingsPercentage = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedSavingsPercentage} -> estimatedSavingsPercentage) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedSavingsPercentage = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The estimated monthly savings amount based on the recommended Savings
-- Plans.
savingsPlansPurchaseRecommendationDetail_estimatedMonthlySavingsAmount :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedMonthlySavingsAmount = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedMonthlySavingsAmount} -> estimatedMonthlySavingsAmount) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedMonthlySavingsAmount = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The estimated On-Demand costs you expect with no additional commitment,
-- based on your usage of the selected time period and the Savings Plans
-- you own.
savingsPlansPurchaseRecommendationDetail_estimatedOnDemandCostWithCurrentCommitment :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedOnDemandCostWithCurrentCommitment = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedOnDemandCostWithCurrentCommitment} -> estimatedOnDemandCostWithCurrentCommitment) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedOnDemandCostWithCurrentCommitment = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The upfront cost of the recommended Savings Plans, based on the selected
-- payment option.
savingsPlansPurchaseRecommendationDetail_upfrontCost :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_upfrontCost = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {upfrontCost} -> upfrontCost) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {upfrontCost = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The estimated utilization of the recommended Savings Plans.
savingsPlansPurchaseRecommendationDetail_estimatedAverageUtilization :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedAverageUtilization = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedAverageUtilization} -> estimatedAverageUtilization) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedAverageUtilization = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The lowest value of hourly On-Demand spend over the lookback period of
-- the applicable usage type.
savingsPlansPurchaseRecommendationDetail_currentMinimumHourlyOnDemandSpend :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_currentMinimumHourlyOnDemandSpend = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {currentMinimumHourlyOnDemandSpend} -> currentMinimumHourlyOnDemandSpend) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {currentMinimumHourlyOnDemandSpend = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The currency code that Amazon Web Services used to generate the
-- recommendations and present potential savings.
savingsPlansPurchaseRecommendationDetail_currencyCode :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_currencyCode = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {currencyCode} -> currencyCode) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {currencyCode = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The @AccountID@ the recommendation is generated for.
savingsPlansPurchaseRecommendationDetail_accountId :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_accountId = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {accountId} -> accountId) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {accountId = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The remaining On-Demand cost estimated to not be covered by the
-- recommended Savings Plans, over the length of the lookback period.
savingsPlansPurchaseRecommendationDetail_estimatedOnDemandCost :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedOnDemandCost = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedOnDemandCost} -> estimatedOnDemandCost) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedOnDemandCost = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The average value of hourly On-Demand spend over the lookback period of
-- the applicable usage type.
savingsPlansPurchaseRecommendationDetail_currentAverageHourlyOnDemandSpend :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_currentAverageHourlyOnDemandSpend = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {currentAverageHourlyOnDemandSpend} -> currentAverageHourlyOnDemandSpend) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {currentAverageHourlyOnDemandSpend = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The estimated savings amount that\'s based on the recommended Savings
-- Plans over the length of the lookback period.
savingsPlansPurchaseRecommendationDetail_estimatedSavingsAmount :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedSavingsAmount = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedSavingsAmount} -> estimatedSavingsAmount) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedSavingsAmount = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The cost of the recommended Savings Plans over the length of the
-- lookback period.
savingsPlansPurchaseRecommendationDetail_estimatedSPCost :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedSPCost = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedSPCost} -> estimatedSPCost) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedSPCost = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | Details for your recommended Savings Plans.
savingsPlansPurchaseRecommendationDetail_savingsPlansDetails :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe SavingsPlansDetails)
savingsPlansPurchaseRecommendationDetail_savingsPlansDetails = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {savingsPlansDetails} -> savingsPlansDetails) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {savingsPlansDetails = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The highest value of hourly On-Demand spend over the lookback period of
-- the applicable usage type.
savingsPlansPurchaseRecommendationDetail_currentMaximumHourlyOnDemandSpend :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_currentMaximumHourlyOnDemandSpend = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {currentMaximumHourlyOnDemandSpend} -> currentMaximumHourlyOnDemandSpend) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {currentMaximumHourlyOnDemandSpend = a} :: SavingsPlansPurchaseRecommendationDetail)

-- | The estimated return on investment that\'s based on the recommended
-- Savings Plans that you purchased. This is calculated as
-- @estimatedSavingsAmount@\/ @estimatedSPCost@*100.
savingsPlansPurchaseRecommendationDetail_estimatedROI :: Lens.Lens' SavingsPlansPurchaseRecommendationDetail (Prelude.Maybe Prelude.Text)
savingsPlansPurchaseRecommendationDetail_estimatedROI = Lens.lens (\SavingsPlansPurchaseRecommendationDetail' {estimatedROI} -> estimatedROI) (\s@SavingsPlansPurchaseRecommendationDetail' {} a -> s {estimatedROI = a} :: SavingsPlansPurchaseRecommendationDetail)

instance
  Core.FromJSON
    SavingsPlansPurchaseRecommendationDetail
  where
  parseJSON =
    Core.withObject
      "SavingsPlansPurchaseRecommendationDetail"
      ( \x ->
          SavingsPlansPurchaseRecommendationDetail'
            Prelude.<$> (x Core..:? "HourlyCommitmentToPurchase")
            Prelude.<*> (x Core..:? "EstimatedSavingsPercentage")
            Prelude.<*> (x Core..:? "EstimatedMonthlySavingsAmount")
            Prelude.<*> ( x
                            Core..:? "EstimatedOnDemandCostWithCurrentCommitment"
                        )
            Prelude.<*> (x Core..:? "UpfrontCost")
            Prelude.<*> (x Core..:? "EstimatedAverageUtilization")
            Prelude.<*> (x Core..:? "CurrentMinimumHourlyOnDemandSpend")
            Prelude.<*> (x Core..:? "CurrencyCode")
            Prelude.<*> (x Core..:? "AccountId")
            Prelude.<*> (x Core..:? "EstimatedOnDemandCost")
            Prelude.<*> (x Core..:? "CurrentAverageHourlyOnDemandSpend")
            Prelude.<*> (x Core..:? "EstimatedSavingsAmount")
            Prelude.<*> (x Core..:? "EstimatedSPCost")
            Prelude.<*> (x Core..:? "SavingsPlansDetails")
            Prelude.<*> (x Core..:? "CurrentMaximumHourlyOnDemandSpend")
            Prelude.<*> (x Core..:? "EstimatedROI")
      )

instance
  Prelude.Hashable
    SavingsPlansPurchaseRecommendationDetail
  where
  hashWithSalt
    _salt
    SavingsPlansPurchaseRecommendationDetail' {..} =
      _salt
        `Prelude.hashWithSalt` hourlyCommitmentToPurchase
        `Prelude.hashWithSalt` estimatedSavingsPercentage
        `Prelude.hashWithSalt` estimatedMonthlySavingsAmount
        `Prelude.hashWithSalt` estimatedOnDemandCostWithCurrentCommitment
        `Prelude.hashWithSalt` upfrontCost
        `Prelude.hashWithSalt` estimatedAverageUtilization
        `Prelude.hashWithSalt` currentMinimumHourlyOnDemandSpend
        `Prelude.hashWithSalt` currencyCode
        `Prelude.hashWithSalt` accountId
        `Prelude.hashWithSalt` estimatedOnDemandCost
        `Prelude.hashWithSalt` currentAverageHourlyOnDemandSpend
        `Prelude.hashWithSalt` estimatedSavingsAmount
        `Prelude.hashWithSalt` estimatedSPCost
        `Prelude.hashWithSalt` savingsPlansDetails
        `Prelude.hashWithSalt` currentMaximumHourlyOnDemandSpend
        `Prelude.hashWithSalt` estimatedROI

instance
  Prelude.NFData
    SavingsPlansPurchaseRecommendationDetail
  where
  rnf SavingsPlansPurchaseRecommendationDetail' {..} =
    Prelude.rnf hourlyCommitmentToPurchase
      `Prelude.seq` Prelude.rnf estimatedSavingsPercentage
      `Prelude.seq` Prelude.rnf estimatedMonthlySavingsAmount
      `Prelude.seq` Prelude.rnf
        estimatedOnDemandCostWithCurrentCommitment
      `Prelude.seq` Prelude.rnf upfrontCost
      `Prelude.seq` Prelude.rnf estimatedAverageUtilization
      `Prelude.seq` Prelude.rnf currentMinimumHourlyOnDemandSpend
      `Prelude.seq` Prelude.rnf currencyCode
      `Prelude.seq` Prelude.rnf accountId
      `Prelude.seq` Prelude.rnf estimatedOnDemandCost
      `Prelude.seq` Prelude.rnf currentAverageHourlyOnDemandSpend
      `Prelude.seq` Prelude.rnf estimatedSavingsAmount
      `Prelude.seq` Prelude.rnf estimatedSPCost
      `Prelude.seq` Prelude.rnf savingsPlansDetails
      `Prelude.seq` Prelude.rnf
        currentMaximumHourlyOnDemandSpend
      `Prelude.seq` Prelude.rnf estimatedROI
