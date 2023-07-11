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
-- Module      : Amazonka.RedshiftData.Types.StatementData
-- Copyright   : (c) 2013-2023 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.RedshiftData.Types.StatementData where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import Amazonka.RedshiftData.Types.SqlParameter
import Amazonka.RedshiftData.Types.StatusString

-- | The SQL statement to run.
--
-- /See:/ 'newStatementData' smart constructor.
data StatementData = StatementData'
  { -- | The date and time (UTC) the statement was created.
    createdAt :: Prelude.Maybe Data.POSIX,
    -- | A value that indicates whether the statement is a batch query request.
    isBatchStatement :: Prelude.Maybe Prelude.Bool,
    -- | The parameters used in a SQL statement.
    queryParameters :: Prelude.Maybe (Prelude.NonEmpty SqlParameter),
    -- | The SQL statement.
    queryString :: Prelude.Maybe Prelude.Text,
    -- | One or more SQL statements. Each query string in the array corresponds
    -- to one of the queries in a batch query request.
    queryStrings :: Prelude.Maybe [Prelude.Text],
    -- | The name or Amazon Resource Name (ARN) of the secret that enables access
    -- to the database.
    secretArn :: Prelude.Maybe Prelude.Text,
    -- | The name of the SQL statement.
    statementName :: Prelude.Maybe Prelude.Text,
    -- | The status of the SQL statement. An example is the that the SQL
    -- statement finished.
    status :: Prelude.Maybe StatusString,
    -- | The date and time (UTC) that the statement metadata was last updated.
    updatedAt :: Prelude.Maybe Data.POSIX,
    -- | The SQL statement identifier. This value is a universally unique
    -- identifier (UUID) generated by Amazon Redshift Data API.
    id :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'StatementData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdAt', 'statementData_createdAt' - The date and time (UTC) the statement was created.
--
-- 'isBatchStatement', 'statementData_isBatchStatement' - A value that indicates whether the statement is a batch query request.
--
-- 'queryParameters', 'statementData_queryParameters' - The parameters used in a SQL statement.
--
-- 'queryString', 'statementData_queryString' - The SQL statement.
--
-- 'queryStrings', 'statementData_queryStrings' - One or more SQL statements. Each query string in the array corresponds
-- to one of the queries in a batch query request.
--
-- 'secretArn', 'statementData_secretArn' - The name or Amazon Resource Name (ARN) of the secret that enables access
-- to the database.
--
-- 'statementName', 'statementData_statementName' - The name of the SQL statement.
--
-- 'status', 'statementData_status' - The status of the SQL statement. An example is the that the SQL
-- statement finished.
--
-- 'updatedAt', 'statementData_updatedAt' - The date and time (UTC) that the statement metadata was last updated.
--
-- 'id', 'statementData_id' - The SQL statement identifier. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API.
newStatementData ::
  -- | 'id'
  Prelude.Text ->
  StatementData
newStatementData pId_ =
  StatementData'
    { createdAt = Prelude.Nothing,
      isBatchStatement = Prelude.Nothing,
      queryParameters = Prelude.Nothing,
      queryString = Prelude.Nothing,
      queryStrings = Prelude.Nothing,
      secretArn = Prelude.Nothing,
      statementName = Prelude.Nothing,
      status = Prelude.Nothing,
      updatedAt = Prelude.Nothing,
      id = pId_
    }

-- | The date and time (UTC) the statement was created.
statementData_createdAt :: Lens.Lens' StatementData (Prelude.Maybe Prelude.UTCTime)
statementData_createdAt = Lens.lens (\StatementData' {createdAt} -> createdAt) (\s@StatementData' {} a -> s {createdAt = a} :: StatementData) Prelude.. Lens.mapping Data._Time

-- | A value that indicates whether the statement is a batch query request.
statementData_isBatchStatement :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Bool)
statementData_isBatchStatement = Lens.lens (\StatementData' {isBatchStatement} -> isBatchStatement) (\s@StatementData' {} a -> s {isBatchStatement = a} :: StatementData)

-- | The parameters used in a SQL statement.
statementData_queryParameters :: Lens.Lens' StatementData (Prelude.Maybe (Prelude.NonEmpty SqlParameter))
statementData_queryParameters = Lens.lens (\StatementData' {queryParameters} -> queryParameters) (\s@StatementData' {} a -> s {queryParameters = a} :: StatementData) Prelude.. Lens.mapping Lens.coerced

-- | The SQL statement.
statementData_queryString :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Text)
statementData_queryString = Lens.lens (\StatementData' {queryString} -> queryString) (\s@StatementData' {} a -> s {queryString = a} :: StatementData)

-- | One or more SQL statements. Each query string in the array corresponds
-- to one of the queries in a batch query request.
statementData_queryStrings :: Lens.Lens' StatementData (Prelude.Maybe [Prelude.Text])
statementData_queryStrings = Lens.lens (\StatementData' {queryStrings} -> queryStrings) (\s@StatementData' {} a -> s {queryStrings = a} :: StatementData) Prelude.. Lens.mapping Lens.coerced

-- | The name or Amazon Resource Name (ARN) of the secret that enables access
-- to the database.
statementData_secretArn :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Text)
statementData_secretArn = Lens.lens (\StatementData' {secretArn} -> secretArn) (\s@StatementData' {} a -> s {secretArn = a} :: StatementData)

-- | The name of the SQL statement.
statementData_statementName :: Lens.Lens' StatementData (Prelude.Maybe Prelude.Text)
statementData_statementName = Lens.lens (\StatementData' {statementName} -> statementName) (\s@StatementData' {} a -> s {statementName = a} :: StatementData)

-- | The status of the SQL statement. An example is the that the SQL
-- statement finished.
statementData_status :: Lens.Lens' StatementData (Prelude.Maybe StatusString)
statementData_status = Lens.lens (\StatementData' {status} -> status) (\s@StatementData' {} a -> s {status = a} :: StatementData)

-- | The date and time (UTC) that the statement metadata was last updated.
statementData_updatedAt :: Lens.Lens' StatementData (Prelude.Maybe Prelude.UTCTime)
statementData_updatedAt = Lens.lens (\StatementData' {updatedAt} -> updatedAt) (\s@StatementData' {} a -> s {updatedAt = a} :: StatementData) Prelude.. Lens.mapping Data._Time

-- | The SQL statement identifier. This value is a universally unique
-- identifier (UUID) generated by Amazon Redshift Data API.
statementData_id :: Lens.Lens' StatementData Prelude.Text
statementData_id = Lens.lens (\StatementData' {id} -> id) (\s@StatementData' {} a -> s {id = a} :: StatementData)

instance Data.FromJSON StatementData where
  parseJSON =
    Data.withObject
      "StatementData"
      ( \x ->
          StatementData'
            Prelude.<$> (x Data..:? "CreatedAt")
            Prelude.<*> (x Data..:? "IsBatchStatement")
            Prelude.<*> (x Data..:? "QueryParameters")
            Prelude.<*> (x Data..:? "QueryString")
            Prelude.<*> (x Data..:? "QueryStrings" Data..!= Prelude.mempty)
            Prelude.<*> (x Data..:? "SecretArn")
            Prelude.<*> (x Data..:? "StatementName")
            Prelude.<*> (x Data..:? "Status")
            Prelude.<*> (x Data..:? "UpdatedAt")
            Prelude.<*> (x Data..: "Id")
      )

instance Prelude.Hashable StatementData where
  hashWithSalt _salt StatementData' {..} =
    _salt
      `Prelude.hashWithSalt` createdAt
      `Prelude.hashWithSalt` isBatchStatement
      `Prelude.hashWithSalt` queryParameters
      `Prelude.hashWithSalt` queryString
      `Prelude.hashWithSalt` queryStrings
      `Prelude.hashWithSalt` secretArn
      `Prelude.hashWithSalt` statementName
      `Prelude.hashWithSalt` status
      `Prelude.hashWithSalt` updatedAt
      `Prelude.hashWithSalt` id

instance Prelude.NFData StatementData where
  rnf StatementData' {..} =
    Prelude.rnf createdAt
      `Prelude.seq` Prelude.rnf isBatchStatement
      `Prelude.seq` Prelude.rnf queryParameters
      `Prelude.seq` Prelude.rnf queryString
      `Prelude.seq` Prelude.rnf queryStrings
      `Prelude.seq` Prelude.rnf secretArn
      `Prelude.seq` Prelude.rnf statementName
      `Prelude.seq` Prelude.rnf status
      `Prelude.seq` Prelude.rnf updatedAt
      `Prelude.seq` Prelude.rnf id
