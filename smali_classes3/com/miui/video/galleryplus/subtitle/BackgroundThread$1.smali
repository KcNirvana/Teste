.class final Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;
.super Ljava/lang/Object;
.source "BackgroundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/subtitle/BackgroundThread;->executeAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$task:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;->val$task:Landroid/os/AsyncTask;

    iput-object p2, p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;->val$task:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;->val$task:Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/miui/video/galleryplus/subtitle/BackgroundThread$1;->val$params:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
