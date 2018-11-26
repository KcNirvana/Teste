.class public Lcom/miui/common/a/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static azs:I

.field private static azt:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/miui/common/a/b/a;->azs:I

    sget v0, Lcom/miui/common/a/b/a;->azs:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miui/common/a/b/a;->azt:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aGz(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/miui/common/a/b/a;->azt:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
