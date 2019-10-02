.class public Lcom/kaltura/playkit/PKTrackConfig;
.super Ljava/lang/Object;
.source "PKTrackConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/PKTrackConfig$Mode;
    }
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "none"


# instance fields
.field private preferredMode:Lcom/kaltura/playkit/PKTrackConfig$Mode;

.field private trackLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kaltura/playkit/PKTrackConfig$Mode;->OFF:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    iput-object v0, p0, Lcom/kaltura/playkit/PKTrackConfig;->preferredMode:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    return-void
.end method


# virtual methods
.method public getPreferredMode()Lcom/kaltura/playkit/PKTrackConfig$Mode;
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/PKTrackConfig;->preferredMode:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    return-object v0
.end method

.method public getTrackLanguage()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/kaltura/playkit/PKTrackConfig;->preferredMode:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    sget-object v1, Lcom/kaltura/playkit/PKTrackConfig$Mode;->OFF:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    if-ne v0, v1, :cond_0

    const-string v0, "none"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/PKTrackConfig;->preferredMode:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    sget-object v1, Lcom/kaltura/playkit/PKTrackConfig$Mode;->AUTO:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/kaltura/playkit/PKTrackConfig;->trackLanguage:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Lcom/kaltura/playkit/PKTrackConfig;->trackLanguage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPreferredMode(Lcom/kaltura/playkit/PKTrackConfig$Mode;)Lcom/kaltura/playkit/PKTrackConfig;
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKTrackConfig$Mode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/kaltura/playkit/PKTrackConfig;->preferredMode:Lcom/kaltura/playkit/PKTrackConfig$Mode;

    return-object p0
.end method

.method public setTrackLanguage(Ljava/lang/String;)Lcom/kaltura/playkit/PKTrackConfig;
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/PKTrackConfig;->trackLanguage:Ljava/lang/String;

    return-object p0
.end method
