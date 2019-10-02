.class public Lcom/ooyala/pulse/ContentMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/pulse/ContentMetadata$ContentForm;
    }
.end annotation


# instance fields
.field a:Lcom/ooyala/pulse/d;

.field private b:Ljava/lang/String;

.field private c:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:F

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ooyala/pulse/ContentMetadata$ContentForm;->UNKNOWN:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    iput-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->c:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    return-void
.end method


# virtual methods
.method final a()Lcom/ooyala/adtech/ContentMetadata;
    .locals 3

    new-instance v0, Lcom/ooyala/adtech/ContentMetadata;

    invoke-direct {v0}, Lcom/ooyala/adtech/ContentMetadata;-><init>()V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setContentForm(Lcom/ooyala/pulse/ContentMetadata$ContentForm;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setIdentifier(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getContentPartner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setContentPartner(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setDuration(F)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getFlags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setFlags(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setTags(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getCustomParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ooyala/adtech/ContentMetadata;->setCustomParameters(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getContentProviderInformation()Lcom/ooyala/pulse/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getProviderCodeOfContentProviderInformation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ooyala/pulse/ContentMetadata;->getContentIdentifierOfContentProviderInformation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ooyala/adtech/ContentMetadata;->setContentProviderInformation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public copyContentProviderInformation(Lcom/ooyala/pulse/d;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ooyala/pulse/d;

    invoke-direct {v0, p1}, Lcom/ooyala/pulse/d;-><init>(Lcom/ooyala/pulse/d;)V

    iput-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContentForm()Lcom/ooyala/pulse/ContentMetadata$ContentForm;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->c:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    return-object v0
.end method

.method public getContentIdentifierOfContentProviderInformation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    iget-object v0, v0, Lcom/ooyala/pulse/d;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentPartner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getContentProviderInformation()Lcom/ooyala/pulse/d;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    return-object v0
.end method

.method public getCustomParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->i:Ljava/util/Map;

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/ooyala/pulse/ContentMetadata;->f:F

    return v0
.end method

.method public getFlags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->g:Ljava/util/List;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderCodeOfContentProviderInformation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    iget-object v0, v0, Lcom/ooyala/pulse/d;->a:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->h:Ljava/util/List;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->b:Ljava/lang/String;

    return-void
.end method

.method public setContentForm(Lcom/ooyala/pulse/ContentMetadata$ContentForm;)V
    .locals 0

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->c:Lcom/ooyala/pulse/ContentMetadata$ContentForm;

    return-void
.end method

.method public setContentPartner(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->e:Ljava/lang/String;

    return-void
.end method

.method public setContentProviderInformation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/ooyala/pulse/d;

    invoke-direct {v0, p1, p2}, Lcom/ooyala/pulse/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ooyala/pulse/ContentMetadata;->a:Lcom/ooyala/pulse/d;

    return-void
.end method

.method public setCustomParameters(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->i:Ljava/util/Map;

    return-void
.end method

.method public setDuration(F)V
    .locals 0

    iput p1, p0, Lcom/ooyala/pulse/ContentMetadata;->f:F

    return-void
.end method

.method public setFlags(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->g:Ljava/util/List;

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->d:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ooyala/pulse/ContentMetadata;->h:Ljava/util/List;

    return-void
.end method
