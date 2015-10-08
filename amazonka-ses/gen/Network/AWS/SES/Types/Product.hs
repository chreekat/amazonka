{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SES.Types.Product
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SES.Types.Product where

import           Network.AWS.Prelude
import           Network.AWS.SES.Types.Sum

-- | When included in a receipt rule, this action adds a header to the
-- received email.
--
-- For information about adding a header using a receipt rule, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-add-header.html Amazon SES Developer Guide>.
--
-- /See:/ 'addHeaderAction' smart constructor.
data AddHeaderAction = AddHeaderAction'
    { _ahaHeaderName  :: !Text
    , _ahaHeaderValue :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddHeaderAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ahaHeaderName'
--
-- * 'ahaHeaderValue'
addHeaderAction
    :: Text -- ^ 'ahaHeaderName'
    -> Text -- ^ 'ahaHeaderValue'
    -> AddHeaderAction
addHeaderAction pHeaderName_ pHeaderValue_ =
    AddHeaderAction'
    { _ahaHeaderName = pHeaderName_
    , _ahaHeaderValue = pHeaderValue_
    }

-- | The name of the header to add. Must be between 1 and 50 characters,
-- inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and
-- dashes only.
ahaHeaderName :: Lens' AddHeaderAction Text
ahaHeaderName = lens _ahaHeaderName (\ s a -> s{_ahaHeaderName = a});

-- | Must be less than 2048 characters, and must not contain newline
-- characters (\"\\r\" or \"\\n\").
ahaHeaderValue :: Lens' AddHeaderAction Text
ahaHeaderValue = lens _ahaHeaderValue (\ s a -> s{_ahaHeaderValue = a});

instance FromXML AddHeaderAction where
        parseXML x
          = AddHeaderAction' <$>
              (x .@ "HeaderName") <*> (x .@ "HeaderValue")

instance ToQuery AddHeaderAction where
        toQuery AddHeaderAction'{..}
          = mconcat
              ["HeaderName" =: _ahaHeaderName,
               "HeaderValue" =: _ahaHeaderValue]

-- | Represents the body of the message. You can specify text, HTML, or both.
-- If you use both, then the message should display correctly in the widest
-- variety of email clients.
--
-- /See:/ 'body' smart constructor.
data Body = Body'
    { _bText :: !(Maybe Content)
    , _bHTML :: !(Maybe Content)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Body' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bText'
--
-- * 'bHTML'
body
    :: Body
body =
    Body'
    { _bText = Nothing
    , _bHTML = Nothing
    }

-- | The content of the message, in text format. Use this for text-based
-- email clients, or clients on high-latency networks (such as mobile
-- devices).
bText :: Lens' Body (Maybe Content)
bText = lens _bText (\ s a -> s{_bText = a});

-- | The content of the message, in HTML format. Use this for email clients
-- that can process HTML. You can include clickable links, formatted text,
-- and much more in an HTML message.
bHTML :: Lens' Body (Maybe Content)
bHTML = lens _bHTML (\ s a -> s{_bHTML = a});

instance ToQuery Body where
        toQuery Body'{..}
          = mconcat ["Text" =: _bText, "Html" =: _bHTML]

-- | When included in a receipt rule, this action rejects the received email
-- by returning a bounce response to the sender and, optionally, publishes
-- a notification to Amazon Simple Notification Service (Amazon SNS).
--
-- For information about sending a bounce message in response to a received
-- email, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-bounce.html Amazon SES Developer Guide>.
--
-- /See:/ 'bounceAction' smart constructor.
data BounceAction = BounceAction'
    { _baTopicARN      :: !(Maybe Text)
    , _baStatusCode    :: !(Maybe Text)
    , _baSmtpReplyCode :: !Text
    , _baMessage       :: !Text
    , _baSender        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BounceAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'baTopicARN'
--
-- * 'baStatusCode'
--
-- * 'baSmtpReplyCode'
--
-- * 'baMessage'
--
-- * 'baSender'
bounceAction
    :: Text -- ^ 'baSmtpReplyCode'
    -> Text -- ^ 'baMessage'
    -> Text -- ^ 'baSender'
    -> BounceAction
bounceAction pSmtpReplyCode_ pMessage_ pSender_ =
    BounceAction'
    { _baTopicARN = Nothing
    , _baStatusCode = Nothing
    , _baSmtpReplyCode = pSmtpReplyCode_
    , _baMessage = pMessage_
    , _baSender = pSender_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
-- the bounce action is taken. An example of an Amazon SNS topic ARN is
-- 'arn:aws:sns:us-west-2:123456789012:MyTopic'. For more information about
-- Amazon SNS topics, see the
-- <http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
baTopicARN :: Lens' BounceAction (Maybe Text)
baTopicARN = lens _baTopicARN (\ s a -> s{_baTopicARN = a});

-- | The SMTP enhanced status code, as defined by
-- <https://tools.ietf.org/html/rfc3463 RFC 3463>.
baStatusCode :: Lens' BounceAction (Maybe Text)
baStatusCode = lens _baStatusCode (\ s a -> s{_baStatusCode = a});

-- | The SMTP reply code, as defined by
-- <https://tools.ietf.org/html/rfc5321 RFC 5321>.
baSmtpReplyCode :: Lens' BounceAction Text
baSmtpReplyCode = lens _baSmtpReplyCode (\ s a -> s{_baSmtpReplyCode = a});

-- | Human-readable text to include in the bounce message.
baMessage :: Lens' BounceAction Text
baMessage = lens _baMessage (\ s a -> s{_baMessage = a});

-- | The email address of the sender of the bounced email. This is the
-- address from which the bounce message will be sent.
baSender :: Lens' BounceAction Text
baSender = lens _baSender (\ s a -> s{_baSender = a});

instance FromXML BounceAction where
        parseXML x
          = BounceAction' <$>
              (x .@? "TopicArn") <*> (x .@? "StatusCode") <*>
                (x .@ "SmtpReplyCode")
                <*> (x .@ "Message")
                <*> (x .@ "Sender")

instance ToQuery BounceAction where
        toQuery BounceAction'{..}
          = mconcat
              ["TopicArn" =: _baTopicARN,
               "StatusCode" =: _baStatusCode,
               "SmtpReplyCode" =: _baSmtpReplyCode,
               "Message" =: _baMessage, "Sender" =: _baSender]

-- | Recipient-related information to include in the Delivery Status
-- Notification (DSN) when an email that Amazon SES receives on your behalf
-- bounces.
--
-- For information about receiving email through Amazon SES, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html Amazon SES Developer Guide>.
--
-- /See:/ 'bouncedRecipientInfo' smart constructor.
data BouncedRecipientInfo = BouncedRecipientInfo'
    { _briBounceType         :: !(Maybe BounceType)
    , _briRecipientDsnFields :: !(Maybe RecipientDsnFields)
    , _briRecipientARN       :: !(Maybe Text)
    , _briRecipient          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BouncedRecipientInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'briBounceType'
--
-- * 'briRecipientDsnFields'
--
-- * 'briRecipientARN'
--
-- * 'briRecipient'
bouncedRecipientInfo
    :: Text -- ^ 'briRecipient'
    -> BouncedRecipientInfo
bouncedRecipientInfo pRecipient_ =
    BouncedRecipientInfo'
    { _briBounceType = Nothing
    , _briRecipientDsnFields = Nothing
    , _briRecipientARN = Nothing
    , _briRecipient = pRecipient_
    }

-- | The reason for the bounce. You must provide either this parameter or
-- 'RecipientDsnFields'.
briBounceType :: Lens' BouncedRecipientInfo (Maybe BounceType)
briBounceType = lens _briBounceType (\ s a -> s{_briBounceType = a});

-- | Recipient-related DSN fields, most of which would normally be filled in
-- automatically when provided with a 'BounceType'. You must provide either
-- this parameter or 'BounceType'.
briRecipientDsnFields :: Lens' BouncedRecipientInfo (Maybe RecipientDsnFields)
briRecipientDsnFields = lens _briRecipientDsnFields (\ s a -> s{_briRecipientDsnFields = a});

-- | This parameter is used only for sending authorization. It is the ARN of
-- the identity that is associated with the sending authorization policy
-- that permits you to receive email for the recipient of the bounced
-- email. For more information about sending authorization, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/sending-authorization.html Amazon SES Developer Guide>.
briRecipientARN :: Lens' BouncedRecipientInfo (Maybe Text)
briRecipientARN = lens _briRecipientARN (\ s a -> s{_briRecipientARN = a});

-- | The email address of the recipient of the bounced email.
briRecipient :: Lens' BouncedRecipientInfo Text
briRecipient = lens _briRecipient (\ s a -> s{_briRecipient = a});

instance ToQuery BouncedRecipientInfo where
        toQuery BouncedRecipientInfo'{..}
          = mconcat
              ["BounceType" =: _briBounceType,
               "RecipientDsnFields" =: _briRecipientDsnFields,
               "RecipientArn" =: _briRecipientARN,
               "Recipient" =: _briRecipient]

-- | Represents textual data, plus an optional character set specification.
--
-- By default, the text must be 7-bit ASCII, due to the constraints of the
-- SMTP protocol. If the text must contain any other characters, then you
-- must also specify a character set. Examples include UTF-8, ISO-8859-1,
-- and Shift_JIS.
--
-- /See:/ 'content' smart constructor.
data Content = Content'
    { _cCharset :: !(Maybe Text)
    , _cData    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Content' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCharset'
--
-- * 'cData'
content
    :: Text -- ^ 'cData'
    -> Content
content pData_ =
    Content'
    { _cCharset = Nothing
    , _cData = pData_
    }

-- | The character set of the content.
cCharset :: Lens' Content (Maybe Text)
cCharset = lens _cCharset (\ s a -> s{_cCharset = a});

-- | The textual data of the content.
cData :: Lens' Content Text
cData = lens _cData (\ s a -> s{_cData = a});

instance ToQuery Content where
        toQuery Content'{..}
          = mconcat ["Charset" =: _cCharset, "Data" =: _cData]

-- | Represents the destination of the message, consisting of To:, CC:, and
-- BCC: fields.
--
-- By default, the string must be 7-bit ASCII. If the text must contain any
-- other characters, then you must use MIME encoded-word syntax (RFC 2047)
-- instead of a literal string. MIME encoded-word syntax uses the following
-- form: '=?charset?encoding?encoded-text?='. For more information, see
-- <http://tools.ietf.org/html/rfc2047 RFC 2047>.
--
-- /See:/ 'destination' smart constructor.
data Destination = Destination'
    { _dBCCAddresses :: !(Maybe [Text])
    , _dCCAddresses  :: !(Maybe [Text])
    , _dToAddresses  :: !(Maybe [Text])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Destination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBCCAddresses'
--
-- * 'dCCAddresses'
--
-- * 'dToAddresses'
destination
    :: Destination
destination =
    Destination'
    { _dBCCAddresses = Nothing
    , _dCCAddresses = Nothing
    , _dToAddresses = Nothing
    }

-- | The BCC: field(s) of the message.
dBCCAddresses :: Lens' Destination [Text]
dBCCAddresses = lens _dBCCAddresses (\ s a -> s{_dBCCAddresses = a}) . _Default . _Coerce;

-- | The CC: field(s) of the message.
dCCAddresses :: Lens' Destination [Text]
dCCAddresses = lens _dCCAddresses (\ s a -> s{_dCCAddresses = a}) . _Default . _Coerce;

-- | The To: field(s) of the message.
dToAddresses :: Lens' Destination [Text]
dToAddresses = lens _dToAddresses (\ s a -> s{_dToAddresses = a}) . _Default . _Coerce;

instance ToQuery Destination where
        toQuery Destination'{..}
          = mconcat
              ["BccAddresses" =:
                 toQuery (toQueryList "member" <$> _dBCCAddresses),
               "CcAddresses" =:
                 toQuery (toQueryList "member" <$> _dCCAddresses),
               "ToAddresses" =:
                 toQuery (toQueryList "member" <$> _dToAddresses)]

-- | Additional X-headers to include in the Delivery Status Notification
-- (DSN) when an email that Amazon SES receives on your behalf bounces.
--
-- For information about receiving email through Amazon SES, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html Amazon SES Developer Guide>.
--
-- /See:/ 'extensionField' smart constructor.
data ExtensionField = ExtensionField'
    { _efName  :: !Text
    , _efValue :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ExtensionField' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'efName'
--
-- * 'efValue'
extensionField
    :: Text -- ^ 'efName'
    -> Text -- ^ 'efValue'
    -> ExtensionField
extensionField pName_ pValue_ =
    ExtensionField'
    { _efName = pName_
    , _efValue = pValue_
    }

-- | The name of the header to add. Must be between 1 and 50 characters,
-- inclusive, and consist of alphanumeric (a-z, A-Z, 0-9) characters and
-- dashes only.
efName :: Lens' ExtensionField Text
efName = lens _efName (\ s a -> s{_efName = a});

-- | The value of the header to add. Must be less than 2048 characters, and
-- must not contain newline characters (\"\\r\" or \"\\n\").
efValue :: Lens' ExtensionField Text
efValue = lens _efValue (\ s a -> s{_efValue = a});

instance ToQuery ExtensionField where
        toQuery ExtensionField'{..}
          = mconcat ["Name" =: _efName, "Value" =: _efValue]

-- | Represents the DKIM attributes of a verified email address or a domain.
--
-- /See:/ 'identityDkimAttributes' smart constructor.
data IdentityDkimAttributes = IdentityDkimAttributes'
    { _idaDkimTokens             :: !(Maybe [Text])
    , _idaDkimEnabled            :: !Bool
    , _idaDkimVerificationStatus :: !VerificationStatus
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentityDkimAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idaDkimTokens'
--
-- * 'idaDkimEnabled'
--
-- * 'idaDkimVerificationStatus'
identityDkimAttributes
    :: Bool -- ^ 'idaDkimEnabled'
    -> VerificationStatus -- ^ 'idaDkimVerificationStatus'
    -> IdentityDkimAttributes
identityDkimAttributes pDkimEnabled_ pDkimVerificationStatus_ =
    IdentityDkimAttributes'
    { _idaDkimTokens = Nothing
    , _idaDkimEnabled = pDkimEnabled_
    , _idaDkimVerificationStatus = pDkimVerificationStatus_
    }

-- | A set of character strings that represent the domain\'s identity. Using
-- these tokens, you will need to create DNS CNAME records that point to
-- DKIM public keys hosted by Amazon SES. Amazon Web Services will
-- eventually detect that you have updated your DNS records; this detection
-- process may take up to 72 hours. Upon successful detection, Amazon SES
-- will be able to DKIM-sign email originating from that domain. (This only
-- applies to domain identities, not email address identities.)
--
-- For more information about creating DNS records using DKIM tokens, go to
-- the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/easy-dkim-dns-records.html Amazon SES Developer Guide>.
idaDkimTokens :: Lens' IdentityDkimAttributes [Text]
idaDkimTokens = lens _idaDkimTokens (\ s a -> s{_idaDkimTokens = a}) . _Default . _Coerce;

-- | True if DKIM signing is enabled for email sent from the identity; false
-- otherwise.
idaDkimEnabled :: Lens' IdentityDkimAttributes Bool
idaDkimEnabled = lens _idaDkimEnabled (\ s a -> s{_idaDkimEnabled = a});

-- | Describes whether Amazon SES has successfully verified the DKIM DNS
-- records (tokens) published in the domain name\'s DNS. (This only applies
-- to domain identities, not email address identities.)
idaDkimVerificationStatus :: Lens' IdentityDkimAttributes VerificationStatus
idaDkimVerificationStatus = lens _idaDkimVerificationStatus (\ s a -> s{_idaDkimVerificationStatus = a});

instance FromXML IdentityDkimAttributes where
        parseXML x
          = IdentityDkimAttributes' <$>
              (x .@? "DkimTokens" .!@ mempty >>=
                 may (parseXMLList "member"))
                <*> (x .@ "DkimEnabled")
                <*> (x .@ "DkimVerificationStatus")

-- | Represents the notification attributes of an identity, including whether
-- an identity has Amazon Simple Notification Service (Amazon SNS) topics
-- set for bounce, complaint, and\/or delivery notifications, and whether
-- feedback forwarding is enabled for bounce and complaint notifications.
--
-- /See:/ 'identityNotificationAttributes' smart constructor.
data IdentityNotificationAttributes = IdentityNotificationAttributes'
    { _inaBounceTopic       :: !Text
    , _inaComplaintTopic    :: !Text
    , _inaDeliveryTopic     :: !Text
    , _inaForwardingEnabled :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentityNotificationAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'inaBounceTopic'
--
-- * 'inaComplaintTopic'
--
-- * 'inaDeliveryTopic'
--
-- * 'inaForwardingEnabled'
identityNotificationAttributes
    :: Text -- ^ 'inaBounceTopic'
    -> Text -- ^ 'inaComplaintTopic'
    -> Text -- ^ 'inaDeliveryTopic'
    -> Bool -- ^ 'inaForwardingEnabled'
    -> IdentityNotificationAttributes
identityNotificationAttributes pBounceTopic_ pComplaintTopic_ pDeliveryTopic_ pForwardingEnabled_ =
    IdentityNotificationAttributes'
    { _inaBounceTopic = pBounceTopic_
    , _inaComplaintTopic = pComplaintTopic_
    , _inaDeliveryTopic = pDeliveryTopic_
    , _inaForwardingEnabled = pForwardingEnabled_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES
-- will publish bounce notifications.
inaBounceTopic :: Lens' IdentityNotificationAttributes Text
inaBounceTopic = lens _inaBounceTopic (\ s a -> s{_inaBounceTopic = a});

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES
-- will publish complaint notifications.
inaComplaintTopic :: Lens' IdentityNotificationAttributes Text
inaComplaintTopic = lens _inaComplaintTopic (\ s a -> s{_inaComplaintTopic = a});

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic where Amazon SES
-- will publish delivery notifications.
inaDeliveryTopic :: Lens' IdentityNotificationAttributes Text
inaDeliveryTopic = lens _inaDeliveryTopic (\ s a -> s{_inaDeliveryTopic = a});

-- | Describes whether Amazon SES will forward bounce and complaint
-- notifications as email. 'true' indicates that Amazon SES will forward
-- bounce and complaint notifications as email, while 'false' indicates
-- that bounce and complaint notifications will be published only to the
-- specified bounce and complaint Amazon SNS topics.
inaForwardingEnabled :: Lens' IdentityNotificationAttributes Bool
inaForwardingEnabled = lens _inaForwardingEnabled (\ s a -> s{_inaForwardingEnabled = a});

instance FromXML IdentityNotificationAttributes where
        parseXML x
          = IdentityNotificationAttributes' <$>
              (x .@ "BounceTopic") <*> (x .@ "ComplaintTopic") <*>
                (x .@ "DeliveryTopic")
                <*> (x .@ "ForwardingEnabled")

-- | Represents the verification attributes of a single identity.
--
-- /See:/ 'identityVerificationAttributes' smart constructor.
data IdentityVerificationAttributes = IdentityVerificationAttributes'
    { _ivaVerificationToken  :: !(Maybe Text)
    , _ivaVerificationStatus :: !VerificationStatus
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'IdentityVerificationAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivaVerificationToken'
--
-- * 'ivaVerificationStatus'
identityVerificationAttributes
    :: VerificationStatus -- ^ 'ivaVerificationStatus'
    -> IdentityVerificationAttributes
identityVerificationAttributes pVerificationStatus_ =
    IdentityVerificationAttributes'
    { _ivaVerificationToken = Nothing
    , _ivaVerificationStatus = pVerificationStatus_
    }

-- | The verification token for a domain identity. Null for email address
-- identities.
ivaVerificationToken :: Lens' IdentityVerificationAttributes (Maybe Text)
ivaVerificationToken = lens _ivaVerificationToken (\ s a -> s{_ivaVerificationToken = a});

-- | The verification status of the identity: \"Pending\", \"Success\",
-- \"Failed\", or \"TemporaryFailure\".
ivaVerificationStatus :: Lens' IdentityVerificationAttributes VerificationStatus
ivaVerificationStatus = lens _ivaVerificationStatus (\ s a -> s{_ivaVerificationStatus = a});

instance FromXML IdentityVerificationAttributes where
        parseXML x
          = IdentityVerificationAttributes' <$>
              (x .@? "VerificationToken") <*>
                (x .@ "VerificationStatus")

-- | When included in a receipt rule, this action calls an AWS Lambda
-- function and, optionally, publishes a notification to Amazon Simple
-- Notification Service (Amazon SNS).
--
-- To enable Amazon SES to call your AWS Lambda function or to publish to
-- an Amazon SNS topic of another account, Amazon SES must have permission
-- to access those resources. For information about giving permissions, see
-- the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html Amazon SES Developer Guide>.
--
-- For information about using AWS Lambda actions in receipt rules, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-lambda.html Amazon SES Developer Guide>.
--
-- /See:/ 'lambdaAction' smart constructor.
data LambdaAction = LambdaAction'
    { _laInvocationType :: !(Maybe InvocationType)
    , _laTopicARN       :: !(Maybe Text)
    , _laFunctionARN    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LambdaAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laInvocationType'
--
-- * 'laTopicARN'
--
-- * 'laFunctionARN'
lambdaAction
    :: Text -- ^ 'laFunctionARN'
    -> LambdaAction
lambdaAction pFunctionARN_ =
    LambdaAction'
    { _laInvocationType = Nothing
    , _laTopicARN = Nothing
    , _laFunctionARN = pFunctionARN_
    }

-- | The invocation type of the AWS Lambda function. An invocation type of
-- 'RequestResponse' means that the execution of the function will
-- immediately result in a response, and a value of 'Event' means that the
-- function will be invoked asynchronously. The default value is 'Event'.
-- For information about AWS Lambda invocation types, see the
-- <http://docs.aws.amazon.com/lambda/latest/dg/API_Invoke.html AWS Lambda Developer Guide>.
--
-- There is a 30-second timeout on 'RequestResponse' invocations. You
-- should use 'Event' invocation in most cases. Use 'RequestResponse' only
-- when you want to make a mail flow decision, such as whether to stop the
-- receipt rule or the receipt rule set.
laInvocationType :: Lens' LambdaAction (Maybe InvocationType)
laInvocationType = lens _laInvocationType (\ s a -> s{_laInvocationType = a});

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
-- the Lambda action is taken. An example of an Amazon SNS topic ARN is
-- 'arn:aws:sns:us-west-2:123456789012:MyTopic'. For more information about
-- Amazon SNS topics, see the
-- <http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
laTopicARN :: Lens' LambdaAction (Maybe Text)
laTopicARN = lens _laTopicARN (\ s a -> s{_laTopicARN = a});

-- | The Amazon Resource Name (ARN) of the AWS Lambda function. An example of
-- an AWS Lambda function ARN is
-- 'arn:aws:lambda:us-west-2:account-id:function:MyFunction'. For more
-- information about AWS Lambda, see the
-- <http://docs.aws.amazon.com/lambda/latest/dg/welcome.html AWS Lambda Developer Guide>.
laFunctionARN :: Lens' LambdaAction Text
laFunctionARN = lens _laFunctionARN (\ s a -> s{_laFunctionARN = a});

instance FromXML LambdaAction where
        parseXML x
          = LambdaAction' <$>
              (x .@? "InvocationType") <*> (x .@? "TopicArn") <*>
                (x .@ "FunctionArn")

instance ToQuery LambdaAction where
        toQuery LambdaAction'{..}
          = mconcat
              ["InvocationType" =: _laInvocationType,
               "TopicArn" =: _laTopicARN,
               "FunctionArn" =: _laFunctionARN]

-- | Represents the message to be sent, composed of a subject and a body.
--
-- /See:/ 'message' smart constructor.
data Message = Message'
    { _mSubject :: !Content
    , _mBody    :: !Body
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mSubject'
--
-- * 'mBody'
message
    :: Content -- ^ 'mSubject'
    -> Body -- ^ 'mBody'
    -> Message
message pSubject_ pBody_ =
    Message'
    { _mSubject = pSubject_
    , _mBody = pBody_
    }

-- | The subject of the message: A short summary of the content, which will
-- appear in the recipient\'s inbox.
mSubject :: Lens' Message Content
mSubject = lens _mSubject (\ s a -> s{_mSubject = a});

-- | The message body.
mBody :: Lens' Message Body
mBody = lens _mBody (\ s a -> s{_mBody = a});

instance ToQuery Message where
        toQuery Message'{..}
          = mconcat ["Subject" =: _mSubject, "Body" =: _mBody]

-- | Message-related information to include in the Delivery Status
-- Notification (DSN) when an email that Amazon SES receives on your behalf
-- bounces.
--
-- For information about receiving email through Amazon SES, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html Amazon SES Developer Guide>.
--
-- /See:/ 'messageDsn' smart constructor.
data MessageDsn = MessageDsn'
    { _mdArrivalDate     :: !(Maybe ISO8601)
    , _mdExtensionFields :: !(Maybe [ExtensionField])
    , _mdReportingMta    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MessageDsn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdArrivalDate'
--
-- * 'mdExtensionFields'
--
-- * 'mdReportingMta'
messageDsn
    :: Text -- ^ 'mdReportingMta'
    -> MessageDsn
messageDsn pReportingMta_ =
    MessageDsn'
    { _mdArrivalDate = Nothing
    , _mdExtensionFields = Nothing
    , _mdReportingMta = pReportingMta_
    }

-- | When the message was received by the reporting mail transfer agent
-- (MTA), in <https://www.ietf.org/rfc/rfc0822.txt RFC 822> date-time
-- format.
mdArrivalDate :: Lens' MessageDsn (Maybe UTCTime)
mdArrivalDate = lens _mdArrivalDate (\ s a -> s{_mdArrivalDate = a}) . mapping _Time;

-- | Additional X-headers to include in the DSN.
mdExtensionFields :: Lens' MessageDsn [ExtensionField]
mdExtensionFields = lens _mdExtensionFields (\ s a -> s{_mdExtensionFields = a}) . _Default . _Coerce;

-- | The reporting MTA that attempted to deliver the message, formatted as
-- specified in <https://tools.ietf.org/html/rfc3464 RFC 3464>
-- ('mta-name-type; mta-name'). The default value is
-- 'dns; inbound-smtp.[region].amazonaws.com'.
mdReportingMta :: Lens' MessageDsn Text
mdReportingMta = lens _mdReportingMta (\ s a -> s{_mdReportingMta = a});

instance ToQuery MessageDsn where
        toQuery MessageDsn'{..}
          = mconcat
              ["ArrivalDate" =: _mdArrivalDate,
               "ExtensionFields" =:
                 toQuery
                   (toQueryList "member" <$> _mdExtensionFields),
               "ReportingMta" =: _mdReportingMta]

-- | Represents the raw data of the message.
--
-- /See:/ 'rawMessage' smart constructor.
newtype RawMessage = RawMessage'
    { _rmData :: Base64
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RawMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rmData'
rawMessage
    :: ByteString -- ^ 'rmData'
    -> RawMessage
rawMessage pData_ =
    RawMessage'
    { _rmData = _Base64 # pData_
    }

-- | The raw data of the message. The client must ensure that the message
-- format complies with Internet email standards regarding email header
-- fields, MIME types, MIME encoding, and base64 encoding (if necessary).
--
-- The To:, CC:, and BCC: headers in the raw message can contain a group
-- list.
--
-- If you are using 'SendRawEmail' with sending authorization, you can
-- include X-headers in the raw message to specify the \"Source,\"
-- \"From,\" and \"Return-Path\" addresses. For more information, see the
-- documentation for 'SendRawEmail'.
--
-- Do not include these X-headers in the DKIM signature, because they are
-- removed by Amazon SES before sending the email.
--
-- For more information, go to the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-email-raw.html Amazon SES Developer Guide>.
--
-- /Note:/ This 'Lens' automatically encodes and decodes Base64 data,
-- despite what the AWS documentation might say.
-- The underlying isomorphism will encode to Base64 representation during
-- serialisation, and decode from Base64 representation during deserialisation.
-- This 'Lens' accepts and returns only raw unencoded data.
rmData :: Lens' RawMessage ByteString
rmData = lens _rmData (\ s a -> s{_rmData = a}) . _Base64;

instance ToQuery RawMessage where
        toQuery RawMessage'{..} = mconcat ["Data" =: _rmData]

-- | An action that Amazon SES can take when it receives an email on behalf
-- of one or more email addresses or domains that you own. An instance of
-- this data type can represent only one action.
--
-- For information about setting up receipt rules, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html Amazon SES Developer Guide>.
--
-- /See:/ 'receiptAction' smart constructor.
data ReceiptAction = ReceiptAction'
    { _raAddHeaderAction :: !(Maybe AddHeaderAction)
    , _raSNSAction       :: !(Maybe SNSAction)
    , _raWorkmailAction  :: !(Maybe WorkmailAction)
    , _raBounceAction    :: !(Maybe BounceAction)
    , _raLambdaAction    :: !(Maybe LambdaAction)
    , _raStopAction      :: !(Maybe StopAction)
    , _raS3Action        :: !(Maybe S3Action)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReceiptAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'raAddHeaderAction'
--
-- * 'raSNSAction'
--
-- * 'raWorkmailAction'
--
-- * 'raBounceAction'
--
-- * 'raLambdaAction'
--
-- * 'raStopAction'
--
-- * 'raS3Action'
receiptAction
    :: ReceiptAction
receiptAction =
    ReceiptAction'
    { _raAddHeaderAction = Nothing
    , _raSNSAction = Nothing
    , _raWorkmailAction = Nothing
    , _raBounceAction = Nothing
    , _raLambdaAction = Nothing
    , _raStopAction = Nothing
    , _raS3Action = Nothing
    }

-- | Adds a header to the received email.
raAddHeaderAction :: Lens' ReceiptAction (Maybe AddHeaderAction)
raAddHeaderAction = lens _raAddHeaderAction (\ s a -> s{_raAddHeaderAction = a});

-- | Publishes the email content within a notification to Amazon SNS.
raSNSAction :: Lens' ReceiptAction (Maybe SNSAction)
raSNSAction = lens _raSNSAction (\ s a -> s{_raSNSAction = a});

-- | Calls Amazon WorkMail and, optionally, publishes a notification to
-- Amazon SNS.
raWorkmailAction :: Lens' ReceiptAction (Maybe WorkmailAction)
raWorkmailAction = lens _raWorkmailAction (\ s a -> s{_raWorkmailAction = a});

-- | Rejects the received email by returning a bounce response to the sender
-- and, optionally, publishes a notification to Amazon Simple Notification
-- Service (Amazon SNS).
raBounceAction :: Lens' ReceiptAction (Maybe BounceAction)
raBounceAction = lens _raBounceAction (\ s a -> s{_raBounceAction = a});

-- | Calls an AWS Lambda function, and optionally, publishes a notification
-- to Amazon SNS.
raLambdaAction :: Lens' ReceiptAction (Maybe LambdaAction)
raLambdaAction = lens _raLambdaAction (\ s a -> s{_raLambdaAction = a});

-- | Terminates the evaluation of the receipt rule set and optionally
-- publishes a notification to Amazon SNS.
raStopAction :: Lens' ReceiptAction (Maybe StopAction)
raStopAction = lens _raStopAction (\ s a -> s{_raStopAction = a});

-- | Saves the received message to an Amazon Simple Storage Service (Amazon
-- S3) bucket and, optionally, publishes a notification to Amazon SNS.
raS3Action :: Lens' ReceiptAction (Maybe S3Action)
raS3Action = lens _raS3Action (\ s a -> s{_raS3Action = a});

instance FromXML ReceiptAction where
        parseXML x
          = ReceiptAction' <$>
              (x .@? "AddHeaderAction") <*> (x .@? "SNSAction") <*>
                (x .@? "WorkmailAction")
                <*> (x .@? "BounceAction")
                <*> (x .@? "LambdaAction")
                <*> (x .@? "StopAction")
                <*> (x .@? "S3Action")

instance ToQuery ReceiptAction where
        toQuery ReceiptAction'{..}
          = mconcat
              ["AddHeaderAction" =: _raAddHeaderAction,
               "SNSAction" =: _raSNSAction,
               "WorkmailAction" =: _raWorkmailAction,
               "BounceAction" =: _raBounceAction,
               "LambdaAction" =: _raLambdaAction,
               "StopAction" =: _raStopAction,
               "S3Action" =: _raS3Action]

-- | A receipt IP address filter enables you to specify whether to accept or
-- reject mail originating from an IP address or range of IP addresses.
--
-- For information about setting up IP address filters, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html Amazon SES Developer Guide>.
--
-- /See:/ 'receiptFilter' smart constructor.
data ReceiptFilter = ReceiptFilter'
    { _rfName     :: !Text
    , _rfIPFilter :: !ReceiptIPFilter
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReceiptFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rfName'
--
-- * 'rfIPFilter'
receiptFilter
    :: Text -- ^ 'rfName'
    -> ReceiptIPFilter -- ^ 'rfIPFilter'
    -> ReceiptFilter
receiptFilter pName_ pIPFilter_ =
    ReceiptFilter'
    { _rfName = pName_
    , _rfIPFilter = pIPFilter_
    }

-- | The name of the IP address filter. The name must:
--
-- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
--     underscores (_), or dashes (-).
-- -   Start and end with a letter or number.
-- -   Contain less than 64 characters.
rfName :: Lens' ReceiptFilter Text
rfName = lens _rfName (\ s a -> s{_rfName = a});

-- | A structure that provides the IP addresses to block or allow, and
-- whether to block or allow incoming mail from them.
rfIPFilter :: Lens' ReceiptFilter ReceiptIPFilter
rfIPFilter = lens _rfIPFilter (\ s a -> s{_rfIPFilter = a});

instance FromXML ReceiptFilter where
        parseXML x
          = ReceiptFilter' <$>
              (x .@ "Name") <*> (x .@ "IpFilter")

instance ToQuery ReceiptFilter where
        toQuery ReceiptFilter'{..}
          = mconcat
              ["Name" =: _rfName, "IpFilter" =: _rfIPFilter]

-- | A receipt IP address filter enables you to specify whether to accept or
-- reject mail originating from an IP address or range of IP addresses.
--
-- For information about setting up IP address filters, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-ip-filters.html Amazon SES Developer Guide>.
--
-- /See:/ 'receiptIPFilter' smart constructor.
data ReceiptIPFilter = ReceiptIPFilter'
    { _rifPolicy :: !ReceiptFilterPolicy
    , _rifCIdR   :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReceiptIPFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rifPolicy'
--
-- * 'rifCIdR'
receiptIPFilter
    :: ReceiptFilterPolicy -- ^ 'rifPolicy'
    -> Text -- ^ 'rifCIdR'
    -> ReceiptIPFilter
receiptIPFilter pPolicy_ pCIdR_ =
    ReceiptIPFilter'
    { _rifPolicy = pPolicy_
    , _rifCIdR = pCIdR_
    }

-- | Indicates whether to block or allow incoming mail from the specified IP
-- addresses.
rifPolicy :: Lens' ReceiptIPFilter ReceiptFilterPolicy
rifPolicy = lens _rifPolicy (\ s a -> s{_rifPolicy = a});

-- | A single IP address or a range of IP addresses that you want to block or
-- allow, specified in Classless Inter-Domain Routing (CIDR) notation. An
-- example of a single email address is 10.0.0.1. An example of a range of
-- IP addresses is 10.0.0.1\/24. For more information about CIDR notation,
-- see <https://tools.ietf.org/html/rfc2317 RFC 2317>.
rifCIdR :: Lens' ReceiptIPFilter Text
rifCIdR = lens _rifCIdR (\ s a -> s{_rifCIdR = a});

instance FromXML ReceiptIPFilter where
        parseXML x
          = ReceiptIPFilter' <$>
              (x .@ "Policy") <*> (x .@ "Cidr")

instance ToQuery ReceiptIPFilter where
        toQuery ReceiptIPFilter'{..}
          = mconcat
              ["Policy" =: _rifPolicy, "Cidr" =: _rifCIdR]

-- | Receipt rules enable you to specify which actions Amazon SES should take
-- when it receives mail on behalf of one or more email addresses or
-- domains that you own.
--
-- Each receipt rule defines a set of email addresses or domains to which
-- it applies. If the email addresses or domains match at least one
-- recipient address of the message, Amazon SES executes all of the receipt
-- rule\'s actions on the message.
--
-- For information about setting up receipt rules, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html Amazon SES Developer Guide>.
--
-- /See:/ 'receiptRule' smart constructor.
data ReceiptRule = ReceiptRule'
    { _rrScanEnabled :: !(Maybe Bool)
    , _rrEnabled     :: !(Maybe Bool)
    , _rrActions     :: !(Maybe [ReceiptAction])
    , _rrRecipients  :: !(Maybe [Text])
    , _rrTLSPolicy   :: !(Maybe TLSPolicy)
    , _rrName        :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReceiptRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrScanEnabled'
--
-- * 'rrEnabled'
--
-- * 'rrActions'
--
-- * 'rrRecipients'
--
-- * 'rrTLSPolicy'
--
-- * 'rrName'
receiptRule
    :: Text -- ^ 'rrName'
    -> ReceiptRule
receiptRule pName_ =
    ReceiptRule'
    { _rrScanEnabled = Nothing
    , _rrEnabled = Nothing
    , _rrActions = Nothing
    , _rrRecipients = Nothing
    , _rrTLSPolicy = Nothing
    , _rrName = pName_
    }

-- | If 'true', then messages to which this receipt rule applies are scanned
-- for spam and viruses. The default value is 'true'.
rrScanEnabled :: Lens' ReceiptRule (Maybe Bool)
rrScanEnabled = lens _rrScanEnabled (\ s a -> s{_rrScanEnabled = a});

-- | If 'true', the receipt rule is active. The default value is true.
rrEnabled :: Lens' ReceiptRule (Maybe Bool)
rrEnabled = lens _rrEnabled (\ s a -> s{_rrEnabled = a});

-- | An ordered list of actions to perform on messages that match at least
-- one of the recipient email addresses or domains specified in the receipt
-- rule.
rrActions :: Lens' ReceiptRule [ReceiptAction]
rrActions = lens _rrActions (\ s a -> s{_rrActions = a}) . _Default . _Coerce;

-- | The recipient domains and email addresses to which the receipt rule
-- applies. If this field is not specified, this rule will match all
-- recipients under all verified domains.
rrRecipients :: Lens' ReceiptRule [Text]
rrRecipients = lens _rrRecipients (\ s a -> s{_rrRecipients = a}) . _Default . _Coerce;

-- | Specifies whether Amazon SES should require that incoming email is
-- delivered over a connection encrypted with Transport Layer Security
-- (TLS). If this parameter is set to 'Require', Amazon SES will bounce
-- emails that are not received over TLS. The default is 'Optional'.
rrTLSPolicy :: Lens' ReceiptRule (Maybe TLSPolicy)
rrTLSPolicy = lens _rrTLSPolicy (\ s a -> s{_rrTLSPolicy = a});

-- | The name of the receipt rule. The name must:
--
-- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
--     underscores (_), or dashes (-).
-- -   Start and end with a letter or number.
-- -   Contain less than 64 characters.
rrName :: Lens' ReceiptRule Text
rrName = lens _rrName (\ s a -> s{_rrName = a});

instance FromXML ReceiptRule where
        parseXML x
          = ReceiptRule' <$>
              (x .@? "ScanEnabled") <*> (x .@? "Enabled") <*>
                (x .@? "Actions" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*>
                (x .@? "Recipients" .!@ mempty >>=
                   may (parseXMLList "member"))
                <*> (x .@? "TlsPolicy")
                <*> (x .@ "Name")

instance ToQuery ReceiptRule where
        toQuery ReceiptRule'{..}
          = mconcat
              ["ScanEnabled" =: _rrScanEnabled,
               "Enabled" =: _rrEnabled,
               "Actions" =:
                 toQuery (toQueryList "member" <$> _rrActions),
               "Recipients" =:
                 toQuery (toQueryList "member" <$> _rrRecipients),
               "TlsPolicy" =: _rrTLSPolicy, "Name" =: _rrName]

-- | Information about a receipt rule set.
--
-- A receipt rule set is a collection of rules that specify what Amazon SES
-- should do with mail it receives on behalf of your account\'s verified
-- domains.
--
-- For information about setting up receipt rule sets, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rule-set.html Amazon SES Developer Guide>.
--
-- /See:/ 'receiptRuleSetMetadata' smart constructor.
data ReceiptRuleSetMetadata = ReceiptRuleSetMetadata'
    { _rrsmName             :: !(Maybe Text)
    , _rrsmCreatedTimestamp :: !(Maybe ISO8601)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReceiptRuleSetMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrsmName'
--
-- * 'rrsmCreatedTimestamp'
receiptRuleSetMetadata
    :: ReceiptRuleSetMetadata
receiptRuleSetMetadata =
    ReceiptRuleSetMetadata'
    { _rrsmName = Nothing
    , _rrsmCreatedTimestamp = Nothing
    }

-- | The name of the receipt rule set. The name must:
--
-- -   Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.),
--     underscores (_), or dashes (-).
-- -   Start and end with a letter or number.
-- -   Contain less than 64 characters.
rrsmName :: Lens' ReceiptRuleSetMetadata (Maybe Text)
rrsmName = lens _rrsmName (\ s a -> s{_rrsmName = a});

-- | The date and time the receipt rule set was created.
rrsmCreatedTimestamp :: Lens' ReceiptRuleSetMetadata (Maybe UTCTime)
rrsmCreatedTimestamp = lens _rrsmCreatedTimestamp (\ s a -> s{_rrsmCreatedTimestamp = a}) . mapping _Time;

instance FromXML ReceiptRuleSetMetadata where
        parseXML x
          = ReceiptRuleSetMetadata' <$>
              (x .@? "Name") <*> (x .@? "CreatedTimestamp")

-- | Recipient-related information to include in the Delivery Status
-- Notification (DSN) when an email that Amazon SES receives on your behalf
-- bounces.
--
-- For information about receiving email through Amazon SES, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email.html Amazon SES Developer Guide>.
--
-- /See:/ 'recipientDsnFields' smart constructor.
data RecipientDsnFields = RecipientDsnFields'
    { _rdfDiagnosticCode  :: !(Maybe Text)
    , _rdfRemoteMta       :: !(Maybe Text)
    , _rdfFinalRecipient  :: !(Maybe Text)
    , _rdfExtensionFields :: !(Maybe [ExtensionField])
    , _rdfLastAttemptDate :: !(Maybe ISO8601)
    , _rdfAction          :: !DsnAction
    , _rdfStatus          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecipientDsnFields' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdfDiagnosticCode'
--
-- * 'rdfRemoteMta'
--
-- * 'rdfFinalRecipient'
--
-- * 'rdfExtensionFields'
--
-- * 'rdfLastAttemptDate'
--
-- * 'rdfAction'
--
-- * 'rdfStatus'
recipientDsnFields
    :: DsnAction -- ^ 'rdfAction'
    -> Text -- ^ 'rdfStatus'
    -> RecipientDsnFields
recipientDsnFields pAction_ pStatus_ =
    RecipientDsnFields'
    { _rdfDiagnosticCode = Nothing
    , _rdfRemoteMta = Nothing
    , _rdfFinalRecipient = Nothing
    , _rdfExtensionFields = Nothing
    , _rdfLastAttemptDate = Nothing
    , _rdfAction = pAction_
    , _rdfStatus = pStatus_
    }

-- | An extended explanation of what went wrong; this is usually an SMTP
-- response. See <https://tools.ietf.org/html/rfc3463 RFC 3463> for the
-- correct formatting of this parameter.
rdfDiagnosticCode :: Lens' RecipientDsnFields (Maybe Text)
rdfDiagnosticCode = lens _rdfDiagnosticCode (\ s a -> s{_rdfDiagnosticCode = a});

-- | The MTA to which the remote MTA attempted to deliver the message,
-- formatted as specified in <https://tools.ietf.org/html/rfc3464 RFC 3464>
-- ('mta-name-type; mta-name'). This parameter typically applies only to
-- propagating synchronous bounces.
rdfRemoteMta :: Lens' RecipientDsnFields (Maybe Text)
rdfRemoteMta = lens _rdfRemoteMta (\ s a -> s{_rdfRemoteMta = a});

-- | The email address to which the message was ultimately delivered. This
-- corresponds to the 'Final-Recipient' in the DSN. If not specified,
-- 'FinalRecipient' will be set to the 'Recipient' specified in the
-- 'BouncedRecipientInfo' structure. Either 'FinalRecipient' or the
-- recipient in 'BouncedRecipientInfo' must be a recipient of the original
-- bounced message.
--
-- Do not prepend the 'FinalRecipient' email address with 'rfc 822;', as
-- described in <https://tools.ietf.org/html/rfc3798 RFC 3798>.
rdfFinalRecipient :: Lens' RecipientDsnFields (Maybe Text)
rdfFinalRecipient = lens _rdfFinalRecipient (\ s a -> s{_rdfFinalRecipient = a});

-- | Additional X-headers to include in the DSN.
rdfExtensionFields :: Lens' RecipientDsnFields [ExtensionField]
rdfExtensionFields = lens _rdfExtensionFields (\ s a -> s{_rdfExtensionFields = a}) . _Default . _Coerce;

-- | The time the final delivery attempt was made, in
-- <https://www.ietf.org/rfc/rfc0822.txt RFC 822> date-time format.
rdfLastAttemptDate :: Lens' RecipientDsnFields (Maybe UTCTime)
rdfLastAttemptDate = lens _rdfLastAttemptDate (\ s a -> s{_rdfLastAttemptDate = a}) . mapping _Time;

-- | The action performed by the reporting mail transfer agent (MTA) as a
-- result of its attempt to deliver the message to the recipient address.
-- This is required by <https://tools.ietf.org/html/rfc3464 RFC 3464>.
rdfAction :: Lens' RecipientDsnFields DsnAction
rdfAction = lens _rdfAction (\ s a -> s{_rdfAction = a});

-- | The status code that indicates what went wrong. This is required by
-- <https://tools.ietf.org/html/rfc3464 RFC 3464>.
rdfStatus :: Lens' RecipientDsnFields Text
rdfStatus = lens _rdfStatus (\ s a -> s{_rdfStatus = a});

instance ToQuery RecipientDsnFields where
        toQuery RecipientDsnFields'{..}
          = mconcat
              ["DiagnosticCode" =: _rdfDiagnosticCode,
               "RemoteMta" =: _rdfRemoteMta,
               "FinalRecipient" =: _rdfFinalRecipient,
               "ExtensionFields" =:
                 toQuery
                   (toQueryList "member" <$> _rdfExtensionFields),
               "LastAttemptDate" =: _rdfLastAttemptDate,
               "Action" =: _rdfAction, "Status" =: _rdfStatus]

-- | When included in a receipt rule, this action saves the received message
-- to an Amazon Simple Storage Service (Amazon S3) bucket and, optionally,
-- publishes a notification to Amazon Simple Notification Service (Amazon
-- SNS).
--
-- To enable Amazon SES to write emails to your Amazon S3 bucket, use an
-- AWS KMS key to encrypt your emails, or publish to an Amazon SNS topic of
-- another account, Amazon SES must have permission to access those
-- resources. For information about giving permissions, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html Amazon SES Developer Guide>.
--
-- When you save your emails to an Amazon S3 bucket, the maximum email size
-- (including headers) is 30 MB. Emails larger than that will bounce.
--
-- For information about specifying Amazon S3 actions in receipt rules, see
-- the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-s3.html Amazon SES Developer Guide>.
--
-- /See:/ 's3Action' smart constructor.
data S3Action = S3Action'
    { _s3KMSKeyARN       :: !(Maybe Text)
    , _s3TopicARN        :: !(Maybe Text)
    , _s3ObjectKeyPrefix :: !(Maybe Text)
    , _s3BucketName      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'S3Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 's3KMSKeyARN'
--
-- * 's3TopicARN'
--
-- * 's3ObjectKeyPrefix'
--
-- * 's3BucketName'
s3Action
    :: Text -- ^ 's3BucketName'
    -> S3Action
s3Action pBucketName_ =
    S3Action'
    { _s3KMSKeyARN = Nothing
    , _s3TopicARN = Nothing
    , _s3ObjectKeyPrefix = Nothing
    , _s3BucketName = pBucketName_
    }

-- | The customer master key that Amazon SES should use to encrypt your
-- emails before saving them to the Amazon S3 bucket. You can use the
-- default master key or a custom master key you created in AWS KMS as
-- follows:
--
-- -   To use the default master key, provide an ARN in the form of
--     'arn:aws:kms:REGION:ACCOUNT-ID-WITHOUT-HYPHENS:alias\/aws\/ses'. For
--     example, if your AWS account ID is 123456789012 and you want to use
--     the default master key in the US West (Oregon) region, the ARN of
--     the default master key would be
--     'arn:aws:kms:us-west-2:123456789012:alias\/aws\/ses'. If you use the
--     default master key, you don\'t need to perform any extra steps to
--     give Amazon SES permission to use the key.
-- -   To use a custom master key you created in AWS KMS, provide the ARN
--     of the master key and ensure that you add a statement to your key\'s
--     policy to give Amazon SES permission to use it. For more information
--     about giving permissions, see the
--     <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html Amazon SES Developer Guide>.
--
-- For more information about key policies, see the
-- <http://docs.aws.amazon.com/kms/latest/developerguide/concepts.html AWS KMS Developer Guide>.
-- If you do not specify a master key, Amazon SES will not encrypt your
-- emails.
--
-- Your mail is encrypted by Amazon SES using the Amazon S3 encryption
-- client before the mail is submitted to Amazon S3 for storage. It is not
-- encrypted using Amazon S3 server-side encryption. This means that you
-- must use the Amazon S3 encryption client to decrypt the email after
-- retrieving it from Amazon S3, as the service has no access to use your
-- AWS KMS keys for decryption. This encryption client is currently
-- available with the <https://aws.amazon.com/sdk-for-java/ AWS Java SDK>
-- and <https://aws.amazon.com/sdk-for-ruby/ AWS Ruby SDK> only. For more
-- information about client-side encryption using AWS KMS master keys, see
-- the
-- <http://alpha-docs-aws.amazon.com/AmazonS3/latest/dev/UsingClientSideEncryption.html Amazon S3 Developer Guide>.
s3KMSKeyARN :: Lens' S3Action (Maybe Text)
s3KMSKeyARN = lens _s3KMSKeyARN (\ s a -> s{_s3KMSKeyARN = a});

-- | The ARN of the Amazon SNS topic to notify when the message is saved to
-- the Amazon S3 bucket. An example of an Amazon SNS topic ARN is
-- 'arn:aws:sns:us-west-2:123456789012:MyTopic'. For more information about
-- Amazon SNS topics, see the
-- <http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
s3TopicARN :: Lens' S3Action (Maybe Text)
s3TopicARN = lens _s3TopicARN (\ s a -> s{_s3TopicARN = a});

-- | The key prefix of the Amazon S3 bucket. The key prefix is similar to a
-- directory name that enables you to store similar data under the same
-- directory in a bucket.
s3ObjectKeyPrefix :: Lens' S3Action (Maybe Text)
s3ObjectKeyPrefix = lens _s3ObjectKeyPrefix (\ s a -> s{_s3ObjectKeyPrefix = a});

-- | The name of the Amazon S3 bucket to which to save the received email.
s3BucketName :: Lens' S3Action Text
s3BucketName = lens _s3BucketName (\ s a -> s{_s3BucketName = a});

instance FromXML S3Action where
        parseXML x
          = S3Action' <$>
              (x .@? "KmsKeyArn") <*> (x .@? "TopicArn") <*>
                (x .@? "ObjectKeyPrefix")
                <*> (x .@ "BucketName")

instance ToQuery S3Action where
        toQuery S3Action'{..}
          = mconcat
              ["KmsKeyArn" =: _s3KMSKeyARN,
               "TopicArn" =: _s3TopicARN,
               "ObjectKeyPrefix" =: _s3ObjectKeyPrefix,
               "BucketName" =: _s3BucketName]

-- | When included in a receipt rule, this action publishes a notification to
-- Amazon Simple Notification Service (Amazon SNS). This action includes a
-- complete copy of the email content in the Amazon SNS notifications.
-- Amazon SNS notifications for all other actions simply provide
-- information about the email. They do not include the email content
-- itself.
--
-- If you own the Amazon SNS topic, you don\'t need to do anything to give
-- Amazon SES permission to publish emails to it. However, if you don\'t
-- own the Amazon SNS topic, you need to attach a policy to the topic to
-- give Amazon SES permissions to access it. For information about giving
-- permissions, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-permissions.html Amazon SES Developer Guide>.
--
-- You can only publish emails that are 150 KB or less (including the
-- header) to Amazon SNS. Larger emails will bounce. If you anticipate
-- emails larger than 150 KB, use the S3 action instead.
--
-- For information about using a receipt rule to publish an Amazon SNS
-- notification, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-sns.html Amazon SES Developer Guide>.
--
-- /See:/ 'snsAction' smart constructor.
newtype SNSAction = SNSAction'
    { _saTopicARN :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SNSAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saTopicARN'
snsAction
    :: Text -- ^ 'saTopicARN'
    -> SNSAction
snsAction pTopicARN_ =
    SNSAction'
    { _saTopicARN = pTopicARN_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify. An
-- example of an Amazon SNS topic ARN is
-- 'arn:aws:sns:us-west-2:123456789012:MyTopic'. For more information about
-- Amazon SNS topics, see the
-- <http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
saTopicARN :: Lens' SNSAction Text
saTopicARN = lens _saTopicARN (\ s a -> s{_saTopicARN = a});

instance FromXML SNSAction where
        parseXML x = SNSAction' <$> (x .@ "TopicArn")

instance ToQuery SNSAction where
        toQuery SNSAction'{..}
          = mconcat ["TopicArn" =: _saTopicARN]

-- | Represents sending statistics data. Each 'SendDataPoint' contains
-- statistics for a 15-minute period of sending activity.
--
-- /See:/ 'sendDataPoint' smart constructor.
data SendDataPoint = SendDataPoint'
    { _sdpRejects          :: !(Maybe Integer)
    , _sdpComplaints       :: !(Maybe Integer)
    , _sdpDeliveryAttempts :: !(Maybe Integer)
    , _sdpBounces          :: !(Maybe Integer)
    , _sdpTimestamp        :: !(Maybe ISO8601)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SendDataPoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdpRejects'
--
-- * 'sdpComplaints'
--
-- * 'sdpDeliveryAttempts'
--
-- * 'sdpBounces'
--
-- * 'sdpTimestamp'
sendDataPoint
    :: SendDataPoint
sendDataPoint =
    SendDataPoint'
    { _sdpRejects = Nothing
    , _sdpComplaints = Nothing
    , _sdpDeliveryAttempts = Nothing
    , _sdpBounces = Nothing
    , _sdpTimestamp = Nothing
    }

-- | Number of emails rejected by Amazon SES.
sdpRejects :: Lens' SendDataPoint (Maybe Integer)
sdpRejects = lens _sdpRejects (\ s a -> s{_sdpRejects = a});

-- | Number of unwanted emails that were rejected by recipients.
sdpComplaints :: Lens' SendDataPoint (Maybe Integer)
sdpComplaints = lens _sdpComplaints (\ s a -> s{_sdpComplaints = a});

-- | Number of emails that have been enqueued for sending.
sdpDeliveryAttempts :: Lens' SendDataPoint (Maybe Integer)
sdpDeliveryAttempts = lens _sdpDeliveryAttempts (\ s a -> s{_sdpDeliveryAttempts = a});

-- | Number of emails that have bounced.
sdpBounces :: Lens' SendDataPoint (Maybe Integer)
sdpBounces = lens _sdpBounces (\ s a -> s{_sdpBounces = a});

-- | Time of the data point.
sdpTimestamp :: Lens' SendDataPoint (Maybe UTCTime)
sdpTimestamp = lens _sdpTimestamp (\ s a -> s{_sdpTimestamp = a}) . mapping _Time;

instance FromXML SendDataPoint where
        parseXML x
          = SendDataPoint' <$>
              (x .@? "Rejects") <*> (x .@? "Complaints") <*>
                (x .@? "DeliveryAttempts")
                <*> (x .@? "Bounces")
                <*> (x .@? "Timestamp")

-- | When included in a receipt rule, this action terminates the evaluation
-- of the receipt rule set and, optionally, publishes a notification to
-- Amazon Simple Notification Service (Amazon SNS).
--
-- For information about setting a stop action in a receipt rule, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-stop.html Amazon SES Developer Guide>.
--
-- /See:/ 'stopAction' smart constructor.
data StopAction = StopAction'
    { _sTopicARN :: !(Maybe Text)
    , _sScope    :: !StopScope
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StopAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTopicARN'
--
-- * 'sScope'
stopAction
    :: StopScope -- ^ 'sScope'
    -> StopAction
stopAction pScope_ =
    StopAction'
    { _sTopicARN = Nothing
    , _sScope = pScope_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
-- the stop action is taken. An example of an Amazon SNS topic ARN is
-- 'arn:aws:sns:us-west-2:123456789012:MyTopic'. For more information about
-- Amazon SNS topics, see the
-- <http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
sTopicARN :: Lens' StopAction (Maybe Text)
sTopicARN = lens _sTopicARN (\ s a -> s{_sTopicARN = a});

-- | The scope to which the Stop action applies. That is, what is being
-- stopped.
sScope :: Lens' StopAction StopScope
sScope = lens _sScope (\ s a -> s{_sScope = a});

instance FromXML StopAction where
        parseXML x
          = StopAction' <$>
              (x .@? "TopicArn") <*> (x .@ "Scope")

instance ToQuery StopAction where
        toQuery StopAction'{..}
          = mconcat
              ["TopicArn" =: _sTopicARN, "Scope" =: _sScope]

-- | When included in a receipt rule, this action calls Amazon WorkMail and,
-- optionally, publishes a notification to Amazon Simple Notification
-- Service (Amazon SNS). You will typically not use this action directly
-- because Amazon WorkMail adds the rule automatically during its setup
-- procedure.
--
-- For information using a receipt rule to call Amazon WorkMail, see the
-- <http://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-action-workmail.html Amazon SES Developer Guide>.
--
-- /See:/ 'workmailAction' smart constructor.
data WorkmailAction = WorkmailAction'
    { _waTopicARN        :: !(Maybe Text)
    , _waOrganizationARN :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'WorkmailAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'waTopicARN'
--
-- * 'waOrganizationARN'
workmailAction
    :: Text -- ^ 'waOrganizationARN'
    -> WorkmailAction
workmailAction pOrganizationARN_ =
    WorkmailAction'
    { _waTopicARN = Nothing
    , _waOrganizationARN = pOrganizationARN_
    }

-- | The Amazon Resource Name (ARN) of the Amazon SNS topic to notify when
-- the WorkMail action is called. An example of an Amazon SNS topic ARN is
-- 'arn:aws:sns:us-west-2:123456789012:MyTopic'. For more information about
-- Amazon SNS topics, see the
-- <http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html Amazon SNS Developer Guide>.
waTopicARN :: Lens' WorkmailAction (Maybe Text)
waTopicARN = lens _waTopicARN (\ s a -> s{_waTopicARN = a});

-- | The ARN of the Amazon WorkMail organization. An example of an Amazon
-- WorkMail organization ARN is
-- 'arn:aws:workmail:us-west-2:123456789012:organization\/m-68755160c4cb4e29a2b2f8fb58f359d7'.
-- For information about Amazon WorkMail organizations, see the
-- <http://docs.aws.amazon.com/workmail/latest/adminguide/organizations_overview.html Amazon WorkMail Administrator Guide>.
waOrganizationARN :: Lens' WorkmailAction Text
waOrganizationARN = lens _waOrganizationARN (\ s a -> s{_waOrganizationARN = a});

instance FromXML WorkmailAction where
        parseXML x
          = WorkmailAction' <$>
              (x .@? "TopicArn") <*> (x .@ "OrganizationArn")

instance ToQuery WorkmailAction where
        toQuery WorkmailAction'{..}
          = mconcat
              ["TopicArn" =: _waTopicARN,
               "OrganizationArn" =: _waOrganizationARN]
