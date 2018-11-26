.class final Lcom/miui/optimizemanage/settings/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic xA:[I

.field final synthetic xB:[Ljava/lang/String;

.field final synthetic xz:Lcom/miui/optimizemanage/settings/b;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/settings/b;[I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/settings/e;->xz:Lcom/miui/optimizemanage/settings/b;

    iput-object p2, p0, Lcom/miui/optimizemanage/settings/e;->xA:[I

    iput-object p3, p0, Lcom/miui/optimizemanage/settings/e;->xB:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/e;->xA:[I

    aget v0, v0, p2

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Lcom/miui/powercenter/a;->beY(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/e;->xz:Lcom/miui/optimizemanage/settings/b;

    invoke-static {v0}, Lcom/miui/optimizemanage/settings/b;->zr(Lcom/miui/optimizemanage/settings/b;)Lmiui/preference/ValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/settings/e;->xB:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
