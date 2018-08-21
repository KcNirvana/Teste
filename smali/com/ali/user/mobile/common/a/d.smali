.class public Lcom/ali/user/mobile/common/a/d;
.super Ljava/lang/Object;
.source "UIConfigManager.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static a()Landroid/widget/Adapter;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "VIEW_CUSTOMISE_ADAPTER"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Adapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Adapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/widget/Button;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->f()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static a(Lcom/ali/user/mobile/ui/widget/APTitleBar;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->k()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitleTextView()Lcom/ali/user/mobile/ui/widget/APTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APTextView;->setTextColor(I)V

    :cond_2
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->j()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getTitlebarBg()Lcom/ali/user/mobile/ui/widget/APRelativeLayout;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getImageBackButton()Lcom/ali/user/mobile/ui/widget/APImageButton;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getImageBackButton()Lcom/ali/user/mobile/ui/widget/APImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/ui/widget/APImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/ui/widget/APTitleBar;->getLeftLine()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "LOGIN_ACCOUNT_HINT_TEXT"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/widget/Button;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p0, v0}, Lcom/ali/user/mobile/ui/widget/ar;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->f()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "PASSWORD_SHOW_ICON"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "PASSWORD_HIDE_ICON"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static e()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "COMMON_BUTTON_BACKGROUD"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static f()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "COMMON_BUTTON_TEXT_COLOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "SUB_BUTTON_BACKGROUD"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static h()I
    .locals 1

    const-string/jumbo v0, "COMMON_TEXT_LINK_COLOR"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "INPUT_BACKGROUND_LINE_FOCUSED"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static j()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "TITLE_BAR_BACKGROUND"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static k()I
    .locals 1

    const-string/jumbo v0, "TITLE_BAR_TEXT_COLOR"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static l()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "TITLE_BAR_BACK_BACKGROUND"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static m()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "TITLE_BAR_BACK_IMG"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static n()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "TITLE_BAR_LEFTLINE_BACKGROUND"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static o()Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "REGISTER_SUCCESS_ICON"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static p()I
    .locals 1

    const-string/jumbo v0, "REGISTER_SUCCESS_TEXT_COLOR"

    invoke-static {v0}, Lcom/ali/user/mobile/common/a/d;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static q()Lcom/ali/user/mobile/common/a/b;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "LOGIN_HISTORY_CYCLE_CALLBACK"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ali/user/mobile/common/a/b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ali/user/mobile/common/a/b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r()Lcom/ali/user/mobile/common/a/c;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ali/user/mobile/common/a/d;->a:Ljava/util/HashMap;

    const-string/jumbo v1, "LOGIN_VIEW_LOAD_FINISHED_CALLBACK"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ali/user/mobile/common/a/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/ali/user/mobile/common/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
