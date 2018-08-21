.class final Lcom/alipay/android/app/statistic/n;
.super Ljava/lang/Object;
.source "StatisticManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/json/JSONObject;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    iput-object p2, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/statistic/n;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v1, "de"

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "mspm_action"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "bp"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "bp"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "mspm_bp"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "session"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "session"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "mspm_session"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "tid"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->a:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "tid"

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string/jumbo v0, "mspm_tid"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    if-nez v0, :cond_9

    :cond_8
    :goto_0
    return-void

    :cond_9
    const-string/jumbo v0, "alipay.msp.cashier.dispatch.logincheck.v2"

    iget-object v2, p0, Lcom/alipay/android/app/statistic/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "api_nsp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "fm_api_nsp"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "api_nm"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "fm_api_nm"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "action"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "fm_action"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "synch"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "fm_synch"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "decay"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "fm_decay"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "external_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "fm_external_info"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "user_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "fm_user_id"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "subua1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "fm_subua1"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "subua2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "fm_subua2"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_apiver"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "fm_mqp_apiver"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_bp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "fm_mqp_bp"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_tid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "fm_mqp_tid"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_ua"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "fm_mqp_ua"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "subua3"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "fm_mqp_subua3"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_pa"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "fm_mqp_pa"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "action"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "cm_acction"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_bp"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "cm_mqp_bp"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_ua"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "session"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "cm_mqp_session"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_apiver"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "cm_mqp_apiver"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/alipay/android/app/statistic/n;->b:Ljava/util/Map;

    const-string/jumbo v2, "mqp_tid"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "cm_mqp_tid"

    const-string/jumbo v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
