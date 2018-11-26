.class public Lcom/miui/luckymoney/config/DoNotDisturbConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static DND_LEVEL_NO_EVERYTHING:I

.field public static DND_LEVEL_NO_SOUND:I

.field public static DND_TEXT_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_LEVEL_NO_SOUND:I

    const/4 v0, 0x1

    sput v0, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_LEVEL_NO_EVERYTHING:I

    const v0, 0x7f07019d

    const v1, 0x7f07019e

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/config/DoNotDisturbConstants;->DND_TEXT_ID:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
