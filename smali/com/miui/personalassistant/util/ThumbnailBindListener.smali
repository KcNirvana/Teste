.class public Lcom/miui/personalassistant/util/ThumbnailBindListener;
.super Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
.source "ThumbnailBindListener.java"


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;-><init>(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lcom/miui/personalassistant/util/ThumbnailBindListener;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/personalassistant/util/ThumbnailBindListener;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/util/ThumbnailBindListener;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method
