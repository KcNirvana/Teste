.class Lcom/alipay/android/app/birdnest/k;
.super Ljava/lang/Object;
.source "FlybirdRuntime.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$l;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/birdnest/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/k;->a:Lcom/alipay/android/app/birdnest/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;IILcom/alipay/birdnest/api/BirdNestEngine$l$b;)Landroid/app/Dialog;
    .locals 2

    const-string/jumbo v0, "alipay_template_month_dialog_title"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/template/YearMonthPickerDialog;

    invoke-direct {v1, v0, p1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/android/app/birdnest/l;

    invoke-direct {v0, p0, v1, p4}, Lcom/alipay/android/app/birdnest/l;-><init>(Lcom/alipay/android/app/birdnest/k;Lcom/alipay/android/app/template/YearMonthPickerDialog;Lcom/alipay/birdnest/api/BirdNestEngine$l$b;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setPositiveListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/alipay/android/app/birdnest/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/birdnest/m;-><init>(Lcom/alipay/android/app/birdnest/k;)V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    if-gez p2, :cond_0

    if-gez p3, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setCurrentDate()V

    :goto_0
    invoke-virtual {v1}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->create()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1, p2, p3}, Lcom/alipay/android/app/template/YearMonthPickerDialog;->setStartPickDate(II)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/birdnest/api/BirdNestEngine$l$a;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lcom/alipay/birdnest/api/FBOverView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
