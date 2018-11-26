.class public Lcom/miui/securitycenter/dynamic/app/AppActivityManager;
.super Lcom/miui/securitycenter/dynamic/AbsDynamicManager;
.source ""

# interfaces
.implements Lcom/miui/securitycenter/dynamic/app/IAppActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/securitycenter/dynamic/app/AppActivityManager;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/dynamic/app/IAppActivity;

    invoke-interface {v0}, Lcom/miui/securitycenter/dynamic/app/IAppActivity;->init()V

    return-void
.end method
