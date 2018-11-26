.class final Lcom/miui/applicationlock/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aiZ:Lcom/miui/applicationlock/g;

.field final synthetic aja:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/g;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/u;->aiZ:Lcom/miui/applicationlock/g;

    iput-object p2, p0, Lcom/miui/applicationlock/u;->aja:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/u;->aiZ:Lcom/miui/applicationlock/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/g;->akH(Lcom/miui/applicationlock/g;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/u;->aja:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method
