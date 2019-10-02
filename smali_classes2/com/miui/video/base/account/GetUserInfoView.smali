.class public interface abstract Lcom/miui/video/base/account/GetUserInfoView;
.super Ljava/lang/Object;
.source "GetUserInfoView.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IView;


# virtual methods
.method public abstract getUserInfoFail(Ljava/lang/String;)V
.end method

.method public abstract getUserInfoSuccess(Lcom/miui/video/base/common/net/model/ModelBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/base/common/net/model/ModelBase<",
            "Lcom/miui/video/base/common/net/model/UserInfo;",
            ">;)V"
        }
    .end annotation
.end method
