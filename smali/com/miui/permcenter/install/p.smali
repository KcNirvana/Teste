.class final Lcom/miui/permcenter/install/p;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic QJ:Lcom/miui/permcenter/install/PackageManagerActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/p;->QJ:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/install/p;->QJ:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-static {v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->RY(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/p;->QJ:Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    return-void
.end method
