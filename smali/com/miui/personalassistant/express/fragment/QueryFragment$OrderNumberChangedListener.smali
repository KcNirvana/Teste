.class Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;
.super Ljava/lang/Object;
.source "QueryFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/fragment/QueryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrderNumberChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;Lcom/miui/personalassistant/express/fragment/QueryFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;-><init>(Lcom/miui/personalassistant/express/fragment/QueryFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    invoke-static {}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$400()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x10000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    invoke-interface {p1, v3, v4, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "QueryFragment"

    const-string/jumbo v4, "afterTextChanged: "

    invoke-static {v3, v4, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$500(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/express/fragment/QueryFragment$OrderNumberChangedListener;->this$0:Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-static {v3}, Lcom/miui/personalassistant/express/fragment/QueryFragment;->access$500(Lcom/miui/personalassistant/express/fragment/QueryFragment;)Landroid/widget/Button;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
