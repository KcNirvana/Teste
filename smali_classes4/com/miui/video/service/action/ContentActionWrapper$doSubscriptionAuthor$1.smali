.class public final Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;
.super Ljava/lang/Object;
.source "ContentActionWrapper.kt"

# interfaces
.implements Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/service/action/ContentActionWrapper;->doSubscriptionAuthor(Landroid/app/Activity;Ljava/lang/String;ZLcom/miui/video/common/library/base/BaseObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1",
        "Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;",
        "onFail",
        "",
        "errorCode",
        "",
        "onSuccess",
        "video_service_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $itemId:Ljava/lang/String;

.field final synthetic $observer:Lcom/miui/video/common/library/base/BaseObserver;

.field final synthetic $subscribe:Z

.field final synthetic this$0:Lcom/miui/video/service/action/ContentActionWrapper;


# direct methods
.method constructor <init>(Lcom/miui/video/service/action/ContentActionWrapper;Ljava/lang/String;ZLcom/miui/video/common/library/base/BaseObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/miui/video/common/library/base/BaseObserver;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->this$0:Lcom/miui/video/service/action/ContentActionWrapper;

    iput-object p2, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->$itemId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->$subscribe:Z

    iput-object p4, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->$observer:Lcom/miui/video/common/library/base/BaseObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->this$0:Lcom/miui/video/service/action/ContentActionWrapper;

    iget-object v1, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->$itemId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->$subscribe:Z

    iget-object v3, p0, Lcom/miui/video/service/action/ContentActionWrapper$doSubscriptionAuthor$1;->$observer:Lcom/miui/video/common/library/base/BaseObserver;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/video/service/action/ContentActionWrapper;->access$subscriptionAuthor(Lcom/miui/video/service/action/ContentActionWrapper;Ljava/lang/String;ZLcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
