.class final Lcom/miui/powercenter/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aPs:Lcom/miui/powercenter/PowerSettings;

.field final synthetic aPt:[I

.field final synthetic aPu:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettings;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/g;->aPs:Lcom/miui/powercenter/PowerSettings;

    iput-object p2, p0, Lcom/miui/powercenter/g;->aPt:[I

    iput-object p3, p0, Lcom/miui/powercenter/g;->aPu:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/g;->aPt:[I

    aget v0, v0, p2

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/miui/powercenter/a;->bfh(I)V

    iget-object v0, p0, Lcom/miui/powercenter/g;->aPs:Lcom/miui/powercenter/PowerSettings;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettings;->beD(Lcom/miui/powercenter/PowerSettings;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/g;->aPu:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
