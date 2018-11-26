.class Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;
.super Lcom/miui/networkassistant/service/ISharedPreBinder$Stub;
.source ""


# instance fields
.field private final mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ISharedPreBinder$Stub;-><init>()V

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V

    return-void
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->mSPHelper:Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
