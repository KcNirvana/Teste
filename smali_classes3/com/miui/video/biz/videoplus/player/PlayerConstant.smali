.class public Lcom/miui/video/biz/videoplus/player/PlayerConstant;
.super Ljava/lang/Object;
.source "PlayerConstant.java"


# static fields
.field public static final ANIM_DURATION:I = 0xc8

.field public static final SHARE_SCREEN_CONNECT_TIMEOUT:I = 0xbb8

.field public static final SHARE_SCREEN_SEARCHING_DURATION:I = 0x1388

.field public static final SUBTITLE_FONT_COLOR:[Ljava/lang/Integer;

.field public static final SUBTITLE_FONT_SIZE:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_SIZE:[Ljava/lang/Integer;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->font_color_0:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->font_color_1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->font_color_2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->font_color_3:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    sget v0, Lcom/miui/video/biz/videoplus/R$color;->font_color_4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_COLOR:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
