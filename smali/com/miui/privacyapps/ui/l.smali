.class final Lcom/miui/privacyapps/ui/l;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic bbQ:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/l;->bbQ:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/privacyapps/ui/l;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/l;->bbQ:Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;

    invoke-static {v0}, Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;->bxY(Lcom/miui/privacyapps/ui/PrivacyAppsManageActivity;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
