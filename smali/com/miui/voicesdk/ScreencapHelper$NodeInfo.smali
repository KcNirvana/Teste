.class public Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;
.super Ljava/lang/Object;
.source "ScreencapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/voicesdk/ScreencapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeInfo"
.end annotation


# static fields
.field public static final sNodePool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field desc:Ljava/lang/CharSequence;

.field isClickable:Z

.field nodeRc:Landroid/graphics/Rect;

.field path:Ljava/lang/String;

.field text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->sNodePool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->nodeRc:Landroid/graphics/Rect;

    return-void
.end method

.method public static obtain()Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;
    .locals 2

    sget-object v1, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->sNodePool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;

    invoke-direct {v0}, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", desc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/voicesdk/ScreencapHelper$NodeInfo;->desc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
