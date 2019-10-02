.class public final Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;
.super Landroid/widget/ArrayAdapter;
.source "PhoneViewWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->setPhonePopList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0017J\u0010\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0011\u001a\u00020\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "com/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1",
        "Landroid/widget/ArrayAdapter;",
        "",
        "(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;Ljava/util/List;Ljava/util/ArrayList;Landroid/content/Context;ILjava/util/List;)V",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "initView",
        "",
        "view",
        "Landroid/widget/AutoCompleteTextView;",
        "setFirstItemToView",
        "setItemToView",
        "id",
        "passportui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xa
    }
.end annotation


# instance fields
.field final synthetic $activateInfoList:Ljava/util/List;

.field final synthetic $markedPhoneList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;Ljava/util/List;Ljava/util/ArrayList;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Ljava/util/ArrayList;",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->$activateInfoList:Ljava/util/List;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->$markedPhoneList:Ljava/util/ArrayList;

    invoke-direct {p0, p4, p5, p6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/xiaomi/passport/ui/R$layout;->phone_list_item:I

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p1, :cond_0

    sget p3, Lcom/xiaomi/passport/ui/R$id;->image_sim_index:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget v0, Lcom/xiaomi/passport/ui/R$drawable;->passport_sim1:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    sget p3, Lcom/xiaomi/passport/ui/R$id;->image_sim_index:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget v0, Lcom/xiaomi/passport/ui/R$drawable;->passport_sim2:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "view.findViewById<TextView>(android.R.id.text1)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public final initView(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p1    # Landroid/widget/AutoCompleteTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1$initView$1;-><init>(Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;Landroid/widget/AutoCompleteTextView;)V

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->setFirstItemToView(Landroid/widget/AutoCompleteTextView;)V

    :cond_4
    return-void
.end method

.method public final setFirstItemToView(Landroid/widget/AutoCompleteTextView;)V
    .locals 1
    .param p1    # Landroid/widget/AutoCompleteTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->setItemToView(Landroid/widget/AutoCompleteTextView;I)V

    :cond_0
    return-void
.end method

.method public final setItemToView(Landroid/widget/AutoCompleteTextView;I)V
    .locals 2
    .param p1    # Landroid/widget/AutoCompleteTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->getPassport_operator_license()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->$activateInfoList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object p2, p2, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->copyWriter:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper$setPhonePopList$adapter$1;->this$0:Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;

    invoke-virtual {p1}, Lcom/xiaomi/passport/ui/internal/PhoneViewWrapper;->getPassport_operator_license()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method
