.class public Lcom/alipay/android/app/ui/quickpay/util/i;
.super Ljava/lang/Object;
.source "UIPropUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/i;->a:I

    sput v1, Lcom/alipay/android/app/ui/quickpay/util/i;->b:I

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-small"

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "x-small"

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "small"

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "medium"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "large"

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "x-large"

    const/high16 v2, 0x41980000    # 19.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->c:Ljava/util/HashMap;

    const-string/jumbo v1, "xx-large"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "switch"

    const-string/jumbo v2, "mini_switch_selector"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "skip"

    const-string/jumbo v2, "mini_switch_selector"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "white_content"

    const-string/jumbo v2, "mini_bg_white"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "gray_content"

    const-string/jumbo v2, "mini_bg_gray"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "detail"

    const-string/jumbo v2, "mini_icon_info"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "header_line"

    const-string/jumbo v2, "mini_header_line"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "mini_logo"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "logo_orange"

    const-string/jumbo v2, "mini_logo"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "small_logo"

    const-string/jumbo v2, "mini_small_logo"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_icon"

    const-string/jumbo v2, "alipay_icon"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "footer_line"

    const-string/jumbo v2, "mini_footer_line"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "middle_line"

    const-string/jumbo v2, "mini_footer_line"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sure"

    const-string/jumbo v2, "mini_icon_sure"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "page_title"

    const-string/jumbo v2, "mini_card_title_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "dash_line"

    const-string/jumbo v2, "mini_dash_line_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "vertical_line"

    const-string/jumbo v2, "mini_vertical_line"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "mini_info"

    const-string/jumbo v2, "mini_page_card_safecode_info"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "result_ok"

    const-string/jumbo v2, "mini_icon_ok"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "normal"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hover"

    const-string/jumbo v2, "mini_btn_confirm_hover"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "normal_second"

    const-string/jumbo v2, "mini_btn_cancel_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "hover_second"

    const-string/jumbo v2, "mini_btn_cancel_hover"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_second"

    const-string/jumbo v2, "mini_btn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_gray"

    const-string/jumbo v2, "mini_btn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable_blue"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_normal"

    const-string/jumbo v2, "mini_btn_normal"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_hover"

    const-string/jumbo v2, "mini_btn_push"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "sms_disable"

    const-string/jumbo v2, "mini_smsbtn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "disable"

    const-string/jumbo v2, "mini_btn_disable"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "login_disable"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "finger_print_info"

    const-string/jumbo v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "goto"

    const-string/jumbo v2, "mini_arrow"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "msp_info"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "back"

    const-string/jumbo v2, "mini_back"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "mini_fullscreen_switch"

    const-string/jumbo v2, "mini_fullscreen_switch_selector"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "inputGroup"

    const-string/jumbo v2, "mini_input_bg"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "help"

    const-string/jumbo v2, "mini_help_icon"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "help2"

    const-string/jumbo v2, "mini_help_icon"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "three_point"

    const-string/jumbo v2, "alipay_msp_mini_three_point"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "unfold"

    const-string/jumbo v2, "mini_arrow_unfold"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "success"

    const-string/jumbo v2, "msp_success"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "setpwd_logo"

    const-string/jumbo v2, "mini_setpwd_logo"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "insurance"

    const-string/jumbo v2, "mini_insurance"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "default_head"

    const-string/jumbo v2, "mini_default_head"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "default_bank_icon"

    const-string/jumbo v2, "mini_bank_icon"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "bindcard"

    const-string/jumbo v2, "mini_bindcard"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "small_close"

    const-string/jumbo v2, "mini_small_close"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_icon"

    const-string/jumbo v2, "alipay_icon"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "alipay_head_img"

    const-string/jumbo v2, "mini_default_head"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "change"

    const-string/jumbo v2, "mini_change"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "pwd_tips"

    const-string/jumbo v2, "mini_pwd_tips"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "check_channal"

    const-string/jumbo v2, "mini_check_channal"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "uncheck_channal"

    const-string/jumbo v2, "mini_uncheck_channal"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "black_back"

    const-string/jumbo v2, "mini_black_back"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "finger"

    const-string/jumbo v2, "alipay_msp_mini_finger"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_contract"

    const-string/jumbo v2, "mini_guide_contract"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "guide_contract_nopwd"

    const-string/jumbo v2, "mini_guide_contract_nopwd"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "authorize_logo"

    const-string/jumbo v2, "mini_authorize_logo"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    const-string/jumbo v1, "bracelet"

    const-string/jumbo v2, "mini_bracelet"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "drawable"

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/android/app/g/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/util/i;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "alipay_icon"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;ZLcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;

    move-result-object v0

    if-eqz p2, :cond_0

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Background:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/b;->b()Landroid/content/Context;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;->a(Landroid/view/View;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$a;Landroid/content/Context;)V

    return-void

    :cond_0
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;->Image:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$LoadAction;

    goto :goto_0
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/i;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method
