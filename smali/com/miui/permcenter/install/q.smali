.class final Lcom/miui/permcenter/install/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic QK:Lcom/miui/permcenter/install/PackageManagerActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/q;->QK:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/install/q;->QK:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->RX(Lcom/miui/permcenter/install/PackageManagerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
