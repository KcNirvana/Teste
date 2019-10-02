.class public Lcom/miui/video/service/language/LanguagePresenter;
.super Lcom/miui/video/common/library/base/BasePresenter;
.source "LanguagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/video/common/library/base/BasePresenter<",
        "Lcom/miui/video/service/language/LanguageView;",
        ">;"
    }
.end annotation


# instance fields
.field private mLanguageCase:Lcom/miui/video/service/language/LanguageCase;

.field private mLanguageRepositoryImpl:Lcom/miui/video/service/language/LanguageRepositoryImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/common/library/base/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCases()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/video/common/library/base/BaseCase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/video/service/language/LanguageRepositoryImpl;

    invoke-direct {v0}, Lcom/miui/video/service/language/LanguageRepositoryImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter;->mLanguageRepositoryImpl:Lcom/miui/video/service/language/LanguageRepositoryImpl;

    new-instance v0, Lcom/miui/video/service/language/LanguageCase;

    iget-object v1, p0, Lcom/miui/video/service/language/LanguagePresenter;->mLanguageRepositoryImpl:Lcom/miui/video/service/language/LanguageRepositoryImpl;

    invoke-direct {v0, v1}, Lcom/miui/video/service/language/LanguageCase;-><init>(Lcom/miui/video/service/language/LanguageRepository;)V

    iput-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter;->mLanguageCase:Lcom/miui/video/service/language/LanguageCase;

    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter;->mCaseList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/video/service/language/LanguagePresenter;->mLanguageCase:Lcom/miui/video/service/language/LanguageCase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter;->mCaseList:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageList()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/language/LanguagePresenter;->mLanguageCase:Lcom/miui/video/service/language/LanguageCase;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lcom/miui/video/service/language/LanguagePresenter$1;

    invoke-direct {v2, p0}, Lcom/miui/video/service/language/LanguagePresenter$1;-><init>(Lcom/miui/video/service/language/LanguagePresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/service/language/LanguageCase;->execute(Ljava/lang/Object;Lcom/miui/video/common/library/base/BaseObserver;)V

    return-void
.end method
