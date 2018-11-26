.class public Lcom/miui/luckymoney/webapi/NetworkAsyncTask;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private floatResourceResult:Lcom/miui/luckymoney/webapi/FloatResourceResult;

.field private luckyAlarmResult:Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

.field private masterSwitchResult:Lcom/miui/luckymoney/webapi/MasterSwitchResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->updateMasterSwitchConfig()Lcom/miui/luckymoney/webapi/MasterSwitchResult;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;->masterSwitchResult:Lcom/miui/luckymoney/webapi/MasterSwitchResult;

    invoke-static {}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->updateLuckyAlarmConfig()Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;->luckyAlarmResult:Lcom/miui/luckymoney/webapi/LuckyAlarmResult;

    invoke-static {}, Lcom/miui/luckymoney/webapi/WebApiAccessHelper;->updateFloatResourceConfig()Lcom/miui/luckymoney/webapi/FloatResourceResult;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/webapi/NetworkAsyncTask;->floatResourceResult:Lcom/miui/luckymoney/webapi/FloatResourceResult;

    const/4 v0, 0x0

    return-object v0
.end method
