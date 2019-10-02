.class Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;
.super Ljava/lang/Object;
.source "TimeFragment.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$LocalMediaObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChange$78(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->initViewsValue()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->initViewsEvent()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V
    .locals 1

    sget-object p2, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$10;->$SwitchMap$com$miui$video$biz$videoplus$db$core$loader$SyncMediaService$Type:[I

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->moment_tab_wechat:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/fragmentplus/CoreFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$2000(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator;->generateOtherPage(Landroid/content/Context;Ljava/util/List;Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentPageGenerator$PageGeneratorCallback;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1900(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;->this$0:Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->access$1900(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$7$6NVOrSHzEarBtjxIsO7dJUD_WLg;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/fragments/-$$Lambda$TimeFragment$7$6NVOrSHzEarBtjxIsO7dJUD_WLg;-><init>(Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment$7;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
