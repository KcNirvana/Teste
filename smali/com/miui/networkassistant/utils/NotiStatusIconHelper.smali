.class public Lcom/miui/networkassistant/utils/NotiStatusIconHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final iconRes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->iconRes:[I

    return-void

    :array_0
    .array-data 4
        0x7f020322
        0x7f02031e
        0x7f02031f
        0x7f020320
        0x7f020321
        0x7f020323
        0x7f020324
        0x7f020325
        0x7f020326
        0x7f020327
        0x7f02031d
        0x7f020328
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconByLevel(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->iconRes:[I

    const/16 v1, 0xb

    aget v0, v0, v1

    return v0

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/utils/NotiStatusIconHelper;->iconRes:[I

    div-int/lit8 v1, p0, 0xa

    aget v0, v0, v1

    return v0
.end method
