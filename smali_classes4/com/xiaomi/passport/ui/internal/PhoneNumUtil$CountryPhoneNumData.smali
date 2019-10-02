.class public Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;
.super Ljava/lang/Object;
.source "PhoneNumUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/ui/internal/PhoneNumUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountryPhoneNumData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;",
        ">;"
    }
.end annotation


# instance fields
.field public countryCode:Ljava/lang/String;

.field public countryISO:Ljava/lang/String;

.field public countryName:Ljava/lang/String;

.field lengths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field prefix:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryName:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryISO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryName:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->countryName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;->compareTo(Lcom/xiaomi/passport/ui/internal/PhoneNumUtil$CountryPhoneNumData;)I

    move-result p1

    return p1
.end method
