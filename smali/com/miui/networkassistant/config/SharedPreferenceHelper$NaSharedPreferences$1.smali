.class final Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;
.super Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;
.source ""


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;->this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPutBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;->this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onPutFloat(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;->this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public onPutInt(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;->this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onPutLong(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;->this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public onPutString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences$1;->this$1:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
