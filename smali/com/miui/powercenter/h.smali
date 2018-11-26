.class final Lcom/miui/powercenter/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aPv:Lcom/miui/powercenter/PowerSettings;

.field final synthetic aPw:[I

.field final synthetic aPx:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettings;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/h;->aPv:Lcom/miui/powercenter/PowerSettings;

    iput-object p2, p0, Lcom/miui/powercenter/h;->aPw:[I

    iput-object p3, p0, Lcom/miui/powercenter/h;->aPx:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/h;->aPv:Lcom/miui/powercenter/PowerSettings;

    iget-object v1, p0, Lcom/miui/powercenter/h;->aPw:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Lcom/miui/powercenter/PowerSettings;->beG(Lcom/miui/powercenter/PowerSettings;I)V

    iget-object v0, p0, Lcom/miui/powercenter/h;->aPv:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beB(Lcom/miui/powercenter/PowerSettings;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/h;->aPx:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
