.class final enum Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;
.super Ljava/lang/Enum;
.source "PlayerGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DragDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

.field public static final enum DOWN:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

.field public static final enum LEFT:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

.field public static final enum RIGHT:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

.field public static final enum UP:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->LEFT:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    const-string v1, "UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->UP:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    const-string v1, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->RIGHT:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    new-instance v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    const-string v1, "DOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->DOWN:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    sget-object v1, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->LEFT:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->UP:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->RIGHT:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->DOWN:Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->$VALUES:[Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;
    .locals 1

    const-class v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->$VALUES:[Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    invoke-virtual {v0}, [Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$DragDirection;

    return-object v0
.end method
