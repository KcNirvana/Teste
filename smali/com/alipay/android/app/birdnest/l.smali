.class Lcom/alipay/android/app/birdnest/l;
.super Ljava/lang/Object;
.source "FlybirdRuntime.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/YearMonthPickerDialog;

.field final synthetic b:Lcom/alipay/birdnest/api/BirdNestEngine$l$b;

.field final synthetic c:Lcom/alipay/android/app/birdnest/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/k;Lcom/alipay/android/app/template/YearMonthPickerDialog;Lcom/alipay/birdnest/api/BirdNestEngine$l$b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/l;->c:Lcom/alipay/android/app/birdnest/k;

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/l;->a:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iput-object p3, p0, Lcom/alipay/android/app/birdnest/l;->b:Lcom/alipay/birdnest/api/BirdNestEngine$l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/l;->a:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v1, v1, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    invoke-virtual {v1}, Lcom/alipay/android/app/template/YearMonthPicker;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/l;->a:Lcom/alipay/android/app/template/YearMonthPickerDialog;

    iget-object v1, v1, Lcom/alipay/android/app/template/YearMonthPickerDialog;->mDatePicker:Lcom/alipay/android/app/template/YearMonthPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/template/YearMonthPicker;->getMonthStr(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/birdnest/l;->b:Lcom/alipay/birdnest/api/BirdNestEngine$l$b;

    invoke-interface {v2, v0, v1}, Lcom/alipay/birdnest/api/BirdNestEngine$l$b;->onPick(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
