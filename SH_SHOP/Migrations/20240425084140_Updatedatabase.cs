using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SH_SHOP.Migrations
{
    /// <inheritdoc />
    public partial class Updatedatabase : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Images",
                table: "Promotions");

            migrationBuilder.AddColumn<double>(
                name: "Discount",
                table: "Promotions",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Discount",
                table: "Promotions");

            migrationBuilder.AddColumn<string>(
                name: "Images",
                table: "Promotions",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");
        }
    }
}
