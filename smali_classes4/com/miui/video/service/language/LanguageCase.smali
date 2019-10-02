.class public Lcom/miui/video/service/language/LanguageCase;
.super Lcom/miui/video/common/library/base/UseCase;
.source "LanguageCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/UseCase<",
        "Ljava/util/List<",
        "Lcom/miui/video/base/common/net/model/LanguageEntity;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mLanguageRepository:Lcom/miui/video/service/language/LanguageRepository;


# direct methods
.method public constructor <init>(Lcom/miui/video/service/language/LanguageRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/UseCase;-><init>()V

    iput-object p1, p0, Lcom/miui/video/service/language/LanguageCase;->mLanguageRepository:Lcom/miui/video/service/language/LanguageRepository;

    return-void
.end method


# virtual methods
.method protected buildObservable(Ljava/lang/Boolean;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/miui/video/base/common/net/model/LanguageEntity;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/video/service/language/LanguageCase;->mLanguageRepository:Lcom/miui/video/service/language/LanguageRepository;

    invoke-interface {p1}, Lcom/miui/video/service/language/LanguageRepository;->getLanguageList()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic buildObservable(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/language/LanguageCase;->buildObservable(Ljava/lang/Boolean;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
