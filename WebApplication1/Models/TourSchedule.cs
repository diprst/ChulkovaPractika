using System;
using System.Collections.Generic;

namespace WebApplication1.Models;

public partial class TourSchedule
{
    public int IdTourSchedule { get; set; }

    public DateOnly? StartDate { get; set; }

    public DateOnly? EndDate { get; set; }

    public int? Tourid { get; set; }

    public virtual Tour? Tour { get; set; }
}
