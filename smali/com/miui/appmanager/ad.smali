.class final Lcom/miui/appmanager/ad;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic aWJ:Lcom/miui/appmanager/AMAppInfomationActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AMAppInfomationActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/ad;->aWJ:Lcom/miui/appmanager/AMAppInfomationActivity;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/appmanager/l;
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/ad;->aWJ:Lcom/miui/appmanager/AMAppInfomationActivity;

    iget-object v1, p0, Lcom/miui/appmanager/ad;->aWJ:Lcom/miui/appmanager/AMAppInfomationActivity;

    iget-object v2, p0, Lcom/miui/appmanager/ad;->aWJ:Lcom/miui/appmanager/AMAppInfomationActivity;

    invoke-static {v2}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmD(Lcom/miui/appmanager/AMAppInfomationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/appmanager/q;->bmV(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/AMAppInfomationActivity;->bmE(Lcom/miui/appmanager/AMAppInfomationActivity;Lorg/json/JSONObject;)Lcom/miui/appmanager/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/appmanager/ad;->loadInBackground()Lcom/miui/appmanager/l;

    move-result-object v0

    return-object v0
.end method
