.class public Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;
.super Ljava/lang/Object;
.source "FlybirdLocalViewActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalViewData"
.end annotation


# instance fields
.field public data:Lcom/alipay/android/app/json/JSONObject;

.field public name:Ljava/lang/String;

.field public page:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewPage;

.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter$LocalViewData;->this$0:Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
