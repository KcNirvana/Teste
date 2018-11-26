.class public Lcom/miui/net/MiuiNetworkPolicyManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    invoke-direct {v0, p1}, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/net/MiuiNetworkPolicyManager;->mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public getAppRestrictBackground(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkPolicyManager;->mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1}, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->getAppRestrictBackground(I)I

    move-result v0

    return v0
.end method

.method public getRestrictBackground()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkPolicyManager;->mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0}, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isAppRestrictBackground(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkPolicyManager;->mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1}, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->isAppRestrictBackground(I)Z

    move-result v0

    return v0
.end method

.method public setAppRestrictBackground(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkPolicyManager;->mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1, p2}, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->setAppRestrictBackground(IZ)V

    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkPolicyManager;->mMiuiPolicyManager:Lmiui/securitycenter/net/MiuiNetworkPolicyManager;

    invoke-virtual {v0, p1}, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->setRestrictBackground(Z)V

    return-void
.end method
