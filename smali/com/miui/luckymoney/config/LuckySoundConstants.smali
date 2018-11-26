.class public Lcom/miui/luckymoney/config/LuckySoundConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_SOUND:I = 0x0

.field public static final SOUND_GLOD:I = 0x1

.field public static final SOUND_LUCKY:I = 0x2

.field public static SOUND_RES_ID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v1, 0x7f060002

    const/high16 v0, 0x7f060000

    filled-new-array {v1, v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/config/LuckySoundConstants;->SOUND_RES_ID:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
