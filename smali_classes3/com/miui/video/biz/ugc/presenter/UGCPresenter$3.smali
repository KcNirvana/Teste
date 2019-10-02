.class Lcom/miui/video/biz/ugc/presenter/UGCPresenter$3;
.super Lcom/miui/video/common/library/base/BaseObserver;
.source "UGCPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->feedbackLike(Lcom/miui/video/biz/ugc/data/UGCEntity$UGCFeedbackBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BaseObserver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/presenter/UGCPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter$3;->this$0:Lcom/miui/video/biz/ugc/presenter/UGCPresenter;

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BaseObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/miui/video/biz/ugc/presenter/UGCPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
