.class public final enum Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;
.super Ljava/lang/Enum;
.source "BaseSmoothScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollerSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

.field public static final enum FAST:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

.field public static final enum NORMAL:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

.field public static final enum SLOW:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

.field public static final enum SLOWER:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

.field public static final enum SLOWEST:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const-string v1, "SLOWEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOWEST:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const-string v1, "SLOWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOWER:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const-string v1, "SLOW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOW:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const-string v1, "NORMAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->NORMAL:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    new-instance v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const-string v1, "FAST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->FAST:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    sget-object v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOWEST:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOWER:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->SLOW:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->NORMAL:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->FAST:Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->$VALUES:[Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;
    .locals 1

    const-class v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    return-object p0
.end method

.method public static values()[Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;
    .locals 1

    sget-object v0, Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->$VALUES:[Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    invoke-virtual {v0}, [Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/video/common/feed/recyclerview/BaseSmoothScroller$ScrollerSpeed;

    return-object v0
.end method
