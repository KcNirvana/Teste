.class public Lcom/miui/share/ShareType;
.super Ljava/lang/Object;
.source "ShareType.java"


# static fields
.field public static final SHARE_CHANNEL_ACTION_SEND:I = 0x0

.field public static final SHARE_CHANNEL_SDK:I = 0x1

.field public static final SHARE_CHANNEL_SDK_SERVER:I = 0x3

.field public static final SHARE_CHANNEL_SERVER:I = 0x2

.field public static final SHARE_FLAG_DEFAULT:I = 0x0

.field public static final SHARE_FLAG_MILIAO_ACTION_SEND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARE_FLAG_MILIAO_SDK:I = 0x10001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARE_FLAG_MORE:I = 0x0

.field public static final SHARE_FLAG_WECHAT_ACTION_SEND:I = 0x2

.field public static final SHARE_FLAG_WECHAT_SDK:I = 0x10002

.field public static final SHARE_FLAG_WECHAT_SDK_TIMELINE:I = 0x10102

.field public static final SHARE_FLAG_WEIBO_ACTION_SEND:I = 0x3

.field public static final SHARE_FLAG_WEIBO_SDK:I = 0x10003

.field public static final SHARE_FLAG_WEIBO_SHARE_SDK_SERVER:I = 0x30003

.field public static final SHARE_FLAG_WEIBO_SHARE_SERVER:I = 0x20003
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHARE_MASK_CHANNEL:I = 0xff0000

.field public static final SHARE_MASK_SUBTYPE:I = 0xff00

.field public static final SHARE_MASK_TYPE:I = 0xff

.field public static final SHARE_SHIFT_CHANNEL:I = 0x10

.field public static final SHARE_SHIFT_SUBTYPE:I = 0x8

.field public static final SHARE_SHIFT_TYPE:I = 0x0

.field public static final SHARE_SUBTYPE_DEFAULT:I = 0x0

.field public static final SHARE_SUBTYPE_WECHAT_DEFAULT:I = 0x0

.field public static final SHARE_SUBTYPE_WECHAT_TIMELINE:I = 0x1

.field public static final SHARE_TYPE_CUSTOMIZATION:I = 0xff

.field public static final SHARE_TYPE_MILIAO:I = 0x1

.field public static final SHARE_TYPE_NONE:I = 0x0

.field public static final SHARE_TYPE_WECHAT:I = 0x2

.field public static final SHARE_TYPE_WEIBO:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCustomizedShareFlag(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x8

    or-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getShareChannel(I)I
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static getShareSubType(I)I
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getShareType(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v0, v0, 0x0

    return v0
.end method
