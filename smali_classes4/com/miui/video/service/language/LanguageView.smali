.class public interface abstract Lcom/miui/video/service/language/LanguageView;
.super Ljava/lang/Object;
.source "LanguageView.java"

# interfaces
.implements Lcom/miui/video/common/library/base/impl/IView;


# virtual methods
.method public abstract onGetLanguageFail(Ljava/lang/String;)V
.end method

.method public abstract onGetLanguageSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;)V"
        }
    .end annotation
.end method
