.class Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$2;
.super Ljava/lang/Object;
.source "CompanyPickerAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;->initData(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/miui/personalassistant/express/bean/CompanyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$2;->this$0:Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/personalassistant/express/bean/CompanyInfo;Lcom/miui/personalassistant/express/bean/CompanyInfo;)I
    .locals 2

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/miui/personalassistant/express/bean/CompanyInfo;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    check-cast p2, Lcom/miui/personalassistant/express/bean/CompanyInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/express/adapter/CompanyPickerAdapter$2;->compare(Lcom/miui/personalassistant/express/bean/CompanyInfo;Lcom/miui/personalassistant/express/bean/CompanyInfo;)I

    move-result v0

    return v0
.end method
