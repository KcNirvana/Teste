.class Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;
.super Ljava/lang/Object;
.source "UIUGCVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/card/UIUGCVideo;->initViewsEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->isLike:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->isLike:Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget v1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$200(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object v1

    iget v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$300(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$300(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iput-boolean v0, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->isLike:Z

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object p1

    iget v1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$200(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object v1

    iget v1, v1, Lcom/miui/video/biz/ugc/data/UGCEntity;->hot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$300(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$000(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/card/UIUGCVideo$2;->this$0:Lcom/miui/video/biz/ugc/card/UIUGCVideo;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/card/UIUGCVideo;->access$100(Lcom/miui/video/biz/ugc/card/UIUGCVideo;)Lcom/miui/video/biz/ugc/data/UGCEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;->onLikeChange(Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    :cond_1
    return-void
.end method
