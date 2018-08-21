.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;
.super Ljava/lang/Object;
.source "Commands.java"


# static fields
.field public static COMMAND_BRACELET_AUTH:I

.field public static COMMAND_BRACELET_AUTH_UPDATE:I

.field public static COMMAND_BRACELET_DEREG:I

.field public static COMMAND_BRACELET_REG:I

.field public static COMMAND_BRACELET_USERSTATUS:I

.field public static COMMAND_FINGERPRINT_AUTH:I

.field public static COMMAND_FINGERPRINT_DEREG:I

.field public static COMMAND_FINGERPRINT_REG:I

.field public static COMMAND_GETDEVICEID:I

.field public static COMMAND_GET_TA_VERSION:I

.field public static COMMAND_GET_USERSTATUS:I

.field public static COMMAND_MASK_BRACELET:I

.field public static COMMAND_PREPARE_KEYPAIR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_GETDEVICEID:I

    const/16 v0, 0x11

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_FINGERPRINT_REG:I

    const/16 v0, 0x12

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_FINGERPRINT_AUTH:I

    const/16 v0, 0x13

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_FINGERPRINT_DEREG:I

    const/16 v0, 0x14

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_GET_USERSTATUS:I

    const/16 v0, 0x15

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_PREPARE_KEYPAIR:I

    const/16 v0, 0x16

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_GET_TA_VERSION:I

    const v0, 0xff00

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_MASK_BRACELET:I

    const/16 v0, 0x1100

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_REG:I

    const/16 v0, 0x1200

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_AUTH:I

    const/16 v0, 0x1300

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_DEREG:I

    const/16 v0, 0x1400

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_USERSTATUS:I

    const/16 v0, 0x1700

    sput v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/message/Commands;->COMMAND_BRACELET_AUTH_UPDATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
