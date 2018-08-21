.class public Lcom/miui/personalassistant/hybrid/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private content:Ljava/lang/String;

.field private features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/hybrid/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/hybrid/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private security:Lcom/miui/personalassistant/hybrid/Security;

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->features:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->preferences:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->permissions:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFeature(Lcom/miui/personalassistant/hybrid/Feature;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->features:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/personalassistant/hybrid/Feature;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPermission(Lcom/miui/personalassistant/hybrid/Permission;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/personalassistant/hybrid/Permission;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearFeatures()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->features:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearPermissions()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearPreferences()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Lcom/miui/personalassistant/hybrid/Feature;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->features:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/hybrid/Feature;

    return-object v0
.end method

.method public getFeatures()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/hybrid/Feature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->features:Ljava/util/Map;

    return-object v0
.end method

.method public getPermission(Ljava/lang/String;)Lcom/miui/personalassistant/hybrid/Permission;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->permissions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/hybrid/Permission;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/hybrid/Permission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->permissions:Ljava/util/Map;

    return-object v0
.end method

.method public getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreferences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->preferences:Ljava/util/Map;

    return-object v0
.end method

.method public getSecurity()Lcom/miui/personalassistant/hybrid/Security;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->security:Lcom/miui/personalassistant/hybrid/Security;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Config;->content:Ljava/lang/String;

    return-void
.end method

.method public setFeatures(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/hybrid/Feature;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Config;->features:Ljava/util/Map;

    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/personalassistant/hybrid/Permission;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Config;->permissions:Ljava/util/Map;

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/hybrid/Config;->preferences:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPreferences(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Config;->preferences:Ljava/util/Map;

    return-void
.end method

.method public setSecurity(Lcom/miui/personalassistant/hybrid/Security;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Config;->security:Lcom/miui/personalassistant/hybrid/Security;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/hybrid/Config;->vendor:Ljava/lang/String;

    return-void
.end method
